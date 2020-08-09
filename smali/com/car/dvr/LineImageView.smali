.class public Lcom/car/dvr/LineImageView;
.super Landroid/widget/ImageView;
.source "LineImageView.java"


# static fields
.field private static final CONFIG_DEGREE:Ljava/lang/String; = "config_degree"

.field private static final CONFIG_LEFT_MARGIN:Ljava/lang/String; = "left_margin"

.field private static final CONFIG_RIGHT_MARGIN:Ljava/lang/String; = "right_margin"

.field private static final INVALID_MARGIN:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "DVR.LineImageView"

.field private static sMarginStep:I

.field private static sMaxMargin:I


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mDegree:I

.field private mLeftMargin:I

.field private mRightMargin:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    sput v0, Lcom/car/dvr/LineImageView;->sMaxMargin:I

    const/16 v0, 0xa

    sput v0, Lcom/car/dvr/LineImageView;->sMarginStep:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/car/dvr/LineImageView;->mDegree:I

    iput v0, p0, Lcom/car/dvr/LineImageView;->mLeftMargin:I

    iput v0, p0, Lcom/car/dvr/LineImageView;->mRightMargin:I

    invoke-direct {p0}, Lcom/car/dvr/LineImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/car/dvr/LineImageView;->mDegree:I

    iput v0, p0, Lcom/car/dvr/LineImageView;->mLeftMargin:I

    iput v0, p0, Lcom/car/dvr/LineImageView;->mRightMargin:I

    invoke-direct {p0}, Lcom/car/dvr/LineImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/car/dvr/LineImageView;->mDegree:I

    iput v0, p0, Lcom/car/dvr/LineImageView;->mLeftMargin:I

    iput v0, p0, Lcom/car/dvr/LineImageView;->mRightMargin:I

    invoke-direct {p0}, Lcom/car/dvr/LineImageView;->init()V

    return-void
.end method

.method private init()V
    .locals 7

    invoke-virtual {p0}, Lcom/car/dvr/LineImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v4, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x6

    sput v4, Lcom/car/dvr/LineImageView;->sMaxMargin:I

    sget v4, Lcom/car/dvr/LineImageView;->sMaxMargin:I

    div-int/lit8 v4, v4, 0xa

    sput v4, Lcom/car/dvr/LineImageView;->sMarginStep:I

    const-string v4, "DVR.LineImageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sMaxMargin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/car/dvr/LineImageView;->sMaxMargin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/car/dvr/LineImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020046

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/car/dvr/LineImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/car/dvr/LineImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/car/dvr/LineImageView;->mBitmapWidth:I

    iget-object v4, p0, Lcom/car/dvr/LineImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/car/dvr/LineImageView;->mBitmapHeight:I

    invoke-virtual {p0}, Lcom/car/dvr/LineImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/car/dvr/LineImageView;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/car/dvr/LineImageView;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v5, "config_degree"

    const/16 v6, 0xf

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/car/dvr/LineImageView;->setDegree(I)V

    return-void
.end method

.method private setDegree(I)V
    .locals 11

    const/16 v0, 0x51

    if-le p1, v0, :cond_0

    const/16 p1, 0x51

    :cond_0
    const/16 v0, 0xf

    if-ge p1, v0, :cond_1

    const/16 p1, 0xf

    :cond_1
    iget v0, p0, Lcom/car/dvr/LineImageView;->mDegree:I

    if-ne v0, p1, :cond_2

    :goto_0
    return-void

    :cond_2
    iput p1, p0, Lcom/car/dvr/LineImageView;->mDegree:I

    iget-object v0, p0, Lcom/car/dvr/LineImageView;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v0, "config_degree"

    iget v1, p0, Lcom/car/dvr/LineImageView;->mDegree:I

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v7, Landroid/graphics/Camera;

    invoke-direct {v7}, Landroid/graphics/Camera;-><init>()V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v7}, Landroid/graphics/Camera;->save()V

    iget v0, p0, Lcom/car/dvr/LineImageView;->mDegree:I

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/graphics/Camera;->rotateX(F)V

    invoke-virtual {v7, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v7}, Landroid/graphics/Camera;->restore()V

    iget v0, p0, Lcom/car/dvr/LineImageView;->mBitmapWidth:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/car/dvr/LineImageView;->mBitmapHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v0, p0, Lcom/car/dvr/LineImageView;->mBitmapWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/car/dvr/LineImageView;->mBitmapHeight:I

    int-to-float v1, v1

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v10, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/car/dvr/LineImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/car/dvr/LineImageView;->mBitmapWidth:I

    iget v4, p0, Lcom/car/dvr/LineImageView;->mBitmapHeight:I

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_1
    invoke-virtual {p0, v10}, Lcom/car/dvr/LineImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method private setLeftMargin(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/car/dvr/LineImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0, v1}, Lcom/car/dvr/LineImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "DVR.LineImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "leftMargin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/dvr/LineImageView;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "left_margin"

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setRightMargin(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/car/dvr/LineImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0, v1}, Lcom/car/dvr/LineImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "DVR.LineImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rightMargin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/car/dvr/LineImageView;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "right_margin"

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public downDegree()V
    .locals 1

    iget v0, p0, Lcom/car/dvr/LineImageView;->mDegree:I

    add-int/lit8 v0, v0, 0x3

    invoke-direct {p0, v0}, Lcom/car/dvr/LineImageView;->setDegree(I)V

    return-void
.end method

.method public leftMarginDown()V
    .locals 2

    iget v0, p0, Lcom/car/dvr/LineImageView;->mLeftMargin:I

    sget v1, Lcom/car/dvr/LineImageView;->sMarginStep:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/car/dvr/LineImageView;->mLeftMargin:I

    iget v0, p0, Lcom/car/dvr/LineImageView;->mLeftMargin:I

    sget v1, Lcom/car/dvr/LineImageView;->sMaxMargin:I

    neg-int v1, v1

    if-ge v0, v1, :cond_0

    sget v0, Lcom/car/dvr/LineImageView;->sMaxMargin:I

    neg-int v0, v0

    iput v0, p0, Lcom/car/dvr/LineImageView;->mLeftMargin:I

    :cond_0
    iget v0, p0, Lcom/car/dvr/LineImageView;->mLeftMargin:I

    invoke-direct {p0, v0}, Lcom/car/dvr/LineImageView;->setLeftMargin(I)V

    return-void
.end method

.method public leftMarginUp()V
    .locals 2

    iget v0, p0, Lcom/car/dvr/LineImageView;->mLeftMargin:I

    sget v1, Lcom/car/dvr/LineImageView;->sMarginStep:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/car/dvr/LineImageView;->mLeftMargin:I

    iget v0, p0, Lcom/car/dvr/LineImageView;->mLeftMargin:I

    sget v1, Lcom/car/dvr/LineImageView;->sMaxMargin:I

    if-le v0, v1, :cond_0

    sget v0, Lcom/car/dvr/LineImageView;->sMaxMargin:I

    iput v0, p0, Lcom/car/dvr/LineImageView;->mLeftMargin:I

    :cond_0
    iget v0, p0, Lcom/car/dvr/LineImageView;->mLeftMargin:I

    invoke-direct {p0, v0}, Lcom/car/dvr/LineImageView;->setLeftMargin(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    const/16 v5, 0x2710

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    const-string v3, "DVR.LineImageView"

    const-string v4, "onAttachedToWindow"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/car/dvr/LineImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/car/dvr/LineImageView;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "left_margin"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_0

    iput v0, p0, Lcom/car/dvr/LineImageView;->mLeftMargin:I

    invoke-direct {p0, v0}, Lcom/car/dvr/LineImageView;->setLeftMargin(I)V

    :goto_0
    iget-object v3, p0, Lcom/car/dvr/LineImageView;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "right_margin"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_1

    iput v2, p0, Lcom/car/dvr/LineImageView;->mRightMargin:I

    invoke-direct {p0, v2}, Lcom/car/dvr/LineImageView;->setRightMargin(I)V

    :goto_1
    return-void

    :cond_0
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, p0, Lcom/car/dvr/LineImageView;->mLeftMargin:I

    goto :goto_0

    :cond_1
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, p0, Lcom/car/dvr/LineImageView;->mRightMargin:I

    goto :goto_1
.end method

.method public rightMarginDown()V
    .locals 2

    iget v0, p0, Lcom/car/dvr/LineImageView;->mRightMargin:I

    sget v1, Lcom/car/dvr/LineImageView;->sMarginStep:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/car/dvr/LineImageView;->mRightMargin:I

    iget v0, p0, Lcom/car/dvr/LineImageView;->mRightMargin:I

    sget v1, Lcom/car/dvr/LineImageView;->sMaxMargin:I

    neg-int v1, v1

    if-ge v0, v1, :cond_0

    sget v0, Lcom/car/dvr/LineImageView;->sMaxMargin:I

    neg-int v0, v0

    iput v0, p0, Lcom/car/dvr/LineImageView;->mRightMargin:I

    :cond_0
    iget v0, p0, Lcom/car/dvr/LineImageView;->mRightMargin:I

    invoke-direct {p0, v0}, Lcom/car/dvr/LineImageView;->setRightMargin(I)V

    return-void
.end method

.method public rightMarginUp()V
    .locals 2

    iget v0, p0, Lcom/car/dvr/LineImageView;->mRightMargin:I

    sget v1, Lcom/car/dvr/LineImageView;->sMarginStep:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/car/dvr/LineImageView;->mRightMargin:I

    iget v0, p0, Lcom/car/dvr/LineImageView;->mRightMargin:I

    sget v1, Lcom/car/dvr/LineImageView;->sMaxMargin:I

    if-le v0, v1, :cond_0

    sget v0, Lcom/car/dvr/LineImageView;->sMaxMargin:I

    iput v0, p0, Lcom/car/dvr/LineImageView;->mRightMargin:I

    :cond_0
    iget v0, p0, Lcom/car/dvr/LineImageView;->mRightMargin:I

    invoke-direct {p0, v0}, Lcom/car/dvr/LineImageView;->setRightMargin(I)V

    return-void
.end method

.method public upDegree()V
    .locals 1

    iget v0, p0, Lcom/car/dvr/LineImageView;->mDegree:I

    add-int/lit8 v0, v0, -0x3

    invoke-direct {p0, v0}, Lcom/car/dvr/LineImageView;->setDegree(I)V

    return-void
.end method
