.class public Lcom/car/dvr/CameraSetting;
.super Lcom/car/dvr/BaseActivity;
.source "CameraSetting.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DVR.CameraSetting"


# instance fields
.field private mClose:Landroid/widget/Button;

.field mGenericFragment:Lcom/car/dvr/GenericFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/car/dvr/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    const-string v0, "DVR.CameraSetting"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/car/dvr/CameraSetting;->setFloatView(Z)V

    invoke-super {p0}, Lcom/car/dvr/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v6, 0x7f0a00c2

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/car/dvr/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/car/dvr/CameraSetting;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "adas"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "biaoding"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v1, :cond_2

    const v4, 0x7f030001

    invoke-virtual {p0, v4}, Lcom/car/dvr/CameraSetting;->setContentView(I)V

    sget v4, Lcom/car/dvr/ADAS/ADAS;->ADAS_TYPE_ID:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const v4, 0x7f0d0025

    invoke-virtual {p0, v4}, Lcom/car/dvr/CameraSetting;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zh"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADAS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/car/dvr/CameraSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    const v4, 0x7f0d0027

    invoke-virtual {p0, v4}, Lcom/car/dvr/CameraSetting;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/car/dvr/CameraSetting;->mClose:Landroid/widget/Button;

    iget-object v4, p0, Lcom/car/dvr/CameraSetting;->mClose:Landroid/widget/Button;

    new-instance v5, Lcom/car/dvr/CameraSetting$1;

    invoke-direct {v5, p0, v2}, Lcom/car/dvr/CameraSetting$1;-><init>(Lcom/car/dvr/CameraSetting;Z)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ADAS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/car/dvr/CameraSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const v4, 0x7f030002

    invoke-virtual {p0, v4}, Lcom/car/dvr/CameraSetting;->setContentView(I)V

    goto :goto_0

    :cond_3
    const v4, 0x7f030004

    invoke-virtual {p0, v4}, Lcom/car/dvr/CameraSetting;->setContentView(I)V

    invoke-virtual {p0}, Lcom/car/dvr/CameraSetting;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0d0034

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/car/dvr/GenericFragment;

    iput-object v4, p0, Lcom/car/dvr/CameraSetting;->mGenericFragment:Lcom/car/dvr/GenericFragment;

    iget-object v4, p0, Lcom/car/dvr/CameraSetting;->mGenericFragment:Lcom/car/dvr/GenericFragment;

    invoke-virtual {v4, p0}, Lcom/car/dvr/GenericFragment;->setBaseActivity(Lcom/car/dvr/BaseActivity;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/car/dvr/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/car/dvr/CameraSetting;->setFloatView(Z)V

    :cond_0
    return v0
.end method
