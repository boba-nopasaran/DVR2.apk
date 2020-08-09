.class public Lcom/car/dvr/browser/DateSelectActivity;
.super Landroid/app/Activity;
.source "DateSelectActivity.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DATE_ERROR:I = 0x1

.field public static final END_DATE:Ljava/lang/String; = "end_date"

.field private static final ONE_DAY_SECONDS:J = 0x15180L

.field public static final START_DATE:Ljava/lang/String; = "start_date"

.field public static final TAG:Ljava/lang/String; = "DVR.DateSelect"


# instance fields
.field private mEndDate:Ljava/util/Calendar;

.field private mEndDatePicker:Landroid/widget/DatePicker;

.field private mEndPrefix:Ljava/lang/String;

.field private mEndTextView:Landroid/widget/TextView;

.field private mOk:Landroid/widget/Button;

.field private mStartDate:Ljava/util/Calendar;

.field private mStartDatePicker:Landroid/widget/DatePicker;

.field private mStartPrefix:Ljava/lang/String;

.field private mStartTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/browser/DateSelectActivity;->mStartDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/browser/DateSelectActivity;->mEndDate:Ljava/util/Calendar;

    return-void
.end method

.method private checkTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 10

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long v6, v2, v4

    const-wide/32 v8, 0x15180

    div-long v0, v6, v8

    const-string v6, "DVR.DateSelect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", end="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", diff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-ltz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private updateTextView(Landroid/widget/TextView;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, -0x55cc4a1b

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/car/dvr/browser/DateSelectActivity;->mStartDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/car/dvr/browser/DateSelectActivity;->mEndDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, v2}, Lcom/car/dvr/browser/DateSelectActivity;->checkTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DVR.DateSelect"

    const-string v2, "date error!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/car/dvr/browser/DateSelectActivity;->showDialog(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "start_date"

    iget-object v2, p0, Lcom/car/dvr/browser/DateSelectActivity;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "end_date"

    iget-object v2, p0, Lcom/car/dvr/browser/DateSelectActivity;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/car/dvr/browser/DateSelectActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/car/dvr/browser/DateSelectActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0d003a
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/16 v5, 0xa0

    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f030007

    invoke-virtual {p0, v4}, Lcom/car/dvr/browser/DateSelectActivity;->setContentView(I)V

    const v4, 0x7f0d0037

    invoke-virtual {p0, v4}, Lcom/car/dvr/browser/DateSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/car/dvr/browser/DateSelectActivity;->mStartTextView:Landroid/widget/TextView;

    const v4, 0x7f0d0039

    invoke-virtual {p0, v4}, Lcom/car/dvr/browser/DateSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/car/dvr/browser/DateSelectActivity;->mEndTextView:Landroid/widget/TextView;

    const v4, 0x7f0d003a

    invoke-virtual {p0, v4}, Lcom/car/dvr/browser/DateSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/car/dvr/browser/DateSelectActivity;->mOk:Landroid/widget/Button;

    iget-object v4, p0, Lcom/car/dvr/browser/DateSelectActivity;->mOk:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0d0036

    invoke-virtual {p0, v4}, Lcom/car/dvr/browser/DateSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/DatePicker;

    iput-object v4, p0, Lcom/car/dvr/browser/DateSelectActivity;->mStartDatePicker:Landroid/widget/DatePicker;

    const v4, 0x7f0d0038

    invoke-virtual {p0, v4}, Lcom/car/dvr/browser/DateSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/DatePicker;

    iput-object v4, p0, Lcom/car/dvr/browser/DateSelectActivity;->mEndDatePicker:Landroid/widget/DatePicker;

    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/car/dvr/browser/DateSelectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v1

    const/16 v4, 0x140

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/car/dvr/browser/DateSelectActivity;->mStartDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/car/dvr/browser/DateSelectActivity;->mStartDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4, v2}, Landroid/widget/DatePicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/car/dvr/browser/DateSelectActivity;->mEndDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/car/dvr/browser/DateSelectActivity;->mEndDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4, v0}, Landroid/widget/DatePicker;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v4, p0, Lcom/car/dvr/browser/DateSelectActivity;->mStartDatePicker:Landroid/widget/DatePicker;

    iget-object v5, p0, Lcom/car/dvr/browser/DateSelectActivity;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lcom/car/dvr/browser/DateSelectActivity;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v7, p0, Lcom/car/dvr/browser/DateSelectActivity;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    iget-object v4, p0, Lcom/car/dvr/browser/DateSelectActivity;->mEndDatePicker:Landroid/widget/DatePicker;

    iget-object v5, p0, Lcom/car/dvr/browser/DateSelectActivity;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lcom/car/dvr/browser/DateSelectActivity;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v7, p0, Lcom/car/dvr/browser/DateSelectActivity;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0a00a9

    invoke-virtual {p0, v5}, Lcom/car/dvr/browser/DateSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/car/dvr/browser/DateSelectActivity;->mStartPrefix:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0a00aa

    invoke-virtual {p0, v5}, Lcom/car/dvr/browser/DateSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/car/dvr/browser/DateSelectActivity;->mEndPrefix:Ljava/lang/String;

    iget-object v4, p0, Lcom/car/dvr/browser/DateSelectActivity;->mStartTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/car/dvr/browser/DateSelectActivity;->mStartDate:Ljava/util/Calendar;

    iget-object v6, p0, Lcom/car/dvr/browser/DateSelectActivity;->mStartPrefix:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/car/dvr/browser/DateSelectActivity;->updateTextView(Landroid/widget/TextView;Ljava/util/Calendar;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/car/dvr/browser/DateSelectActivity;->mEndTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/car/dvr/browser/DateSelectActivity;->mEndDate:Ljava/util/Calendar;

    iget-object v6, p0, Lcom/car/dvr/browser/DateSelectActivity;->mEndPrefix:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/car/dvr/browser/DateSelectActivity;->updateTextView(Landroid/widget/TextView;Ljava/util/Calendar;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x108009b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a00ab

    invoke-virtual {p0, v2}, Lcom/car/dvr/browser/DateSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/car/dvr/browser/DateSelectActivity$1;

    invoke-direct {v3, p0}, Lcom/car/dvr/browser/DateSelectActivity$1;-><init>(Lcom/car/dvr/browser/DateSelectActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/DatePicker;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/car/dvr/browser/DateSelectActivity;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    iget-object v0, p0, Lcom/car/dvr/browser/DateSelectActivity;->mStartTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/car/dvr/browser/DateSelectActivity;->mStartDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/car/dvr/browser/DateSelectActivity;->mStartPrefix:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/car/dvr/browser/DateSelectActivity;->updateTextView(Landroid/widget/TextView;Ljava/util/Calendar;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/car/dvr/browser/DateSelectActivity;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    iget-object v0, p0, Lcom/car/dvr/browser/DateSelectActivity;->mEndTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/car/dvr/browser/DateSelectActivity;->mEndDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/car/dvr/browser/DateSelectActivity;->mEndPrefix:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/car/dvr/browser/DateSelectActivity;->updateTextView(Landroid/widget/TextView;Ljava/util/Calendar;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0d0036
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
