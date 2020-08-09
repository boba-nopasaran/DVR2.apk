.class public Lcom/car/dvr/IconTextView;
.super Landroid/widget/LinearLayout;
.source "IconTextView.java"


# static fields
.field private static final COLOR_ENABLE:I = 0x0

.field private static final COLOR_FOCUS:I = -0x100

.field private static final COLOR_NORMAL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "DVR.IconTextView"


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mTextView:Lcom/car/dvr/VerticalTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/car/dvr/IconTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1, p2}, Lcom/car/dvr/IconTextView;->setupViews(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setupViews(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x1

    sget-object v3, Lcom/car/dvr/R$styleable;->IconTextView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000d

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v3, 0x7f0d0055

    invoke-virtual {p0, v3}, Lcom/car/dvr/IconTextView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/car/dvr/IconTextView;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/car/dvr/IconTextView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f0d0056

    invoke-virtual {p0, v3}, Lcom/car/dvr/IconTextView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/car/dvr/VerticalTextView;

    iput-object v3, p0, Lcom/car/dvr/IconTextView;->mTextView:Lcom/car/dvr/VerticalTextView;

    iget-object v3, p0, Lcom/car/dvr/IconTextView;->mTextView:Lcom/car/dvr/VerticalTextView;

    invoke-virtual {v3, v2}, Lcom/car/dvr/VerticalTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/car/dvr/IconTextView;->mTextView:Lcom/car/dvr/VerticalTextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/car/dvr/VerticalTextView;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public setClickable(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/car/dvr/IconTextView;->mTextView:Lcom/car/dvr/VerticalTextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/car/dvr/VerticalTextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/IconTextView;->mTextView:Lcom/car/dvr/VerticalTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/car/dvr/VerticalTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setFocus(Z)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "DVR.IconTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocus(invisble): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and invalidate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/car/dvr/IconTextView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/car/dvr/IconTextView;->mTextView:Lcom/car/dvr/VerticalTextView;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/car/dvr/VerticalTextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/IconTextView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/car/dvr/IconTextView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/IconTextView;->mTextView:Lcom/car/dvr/VerticalTextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/car/dvr/VerticalTextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/car/dvr/IconTextView;->mTextView:Lcom/car/dvr/VerticalTextView;

    invoke-virtual {v0, v3}, Lcom/car/dvr/VerticalTextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setText(I)V
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/IconTextView;->mTextView:Lcom/car/dvr/VerticalTextView;

    invoke-virtual {v0, p1}, Lcom/car/dvr/VerticalTextView;->setText(I)V

    return-void
.end method
