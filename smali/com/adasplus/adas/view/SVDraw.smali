.class public Lcom/adasplus/adas/view/SVDraw;
.super Landroid/view/SurfaceView;
.source "SVDraw.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;,
        Lcom/adasplus/adas/view/SVDraw$IAdasVpointListener;
    }
.end annotation


# static fields
.field private static final LINE_LENGTH:I = 0x96

.field public static final MSG_DRAW:I = 0x1

.field public static final MSG_SETCHECK:I = 0x2

.field public static volatile mIsDraw:Z

.field private static volatile mLandRect:Landroid/graphics/Rect;

.field private static volatile mPortRect:Landroid/graphics/Rect;

.field public static volatile sConfigX:F

.field public static volatile sConfigY:F


# instance fields
.field private index:I

.field private isLand:Z

.field private isPort:Z

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBlueCarBitmap:Landroid/graphics/Bitmap;

.field private mBtnBottom:I

.field private mBtnLeft:I

.field private mBtnPaint:Landroid/graphics/Paint;

.field private mBtnRight:I

.field private mBtnTop:I

.field private mCarContourBitmap:Landroid/graphics/Bitmap;

.field private mConfig:Lcom/adasplus/data/AdasConfig;

.field private mContext:Landroid/content/Context;

.field private mCount:F

.field private mCrossingRed:Landroid/graphics/Bitmap;

.field private mCrossingWhite:Landroid/graphics/Bitmap;

.field private mDis:F

.field private mDrawThread:Landroid/os/HandlerThread;

.field private mFcwInfo:Lcom/adasplus/data/FcwInfo;

.field private mFlow:F

.field private mHandler:Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;

.field private mHeight:I

.field private mLdwInfo:Lcom/adasplus/data/LdwInfo;

.field private mLdwLeft:Landroid/graphics/Bitmap;

.field private mLdwLine:Landroid/graphics/Bitmap;

.field private mLdwRight:Landroid/graphics/Bitmap;

.field private mLeftPoint:[Landroid/graphics/Point;

.field private mLeftState:Z

.field private final mLock:Ljava/lang/Object;

.field private mPolyMatrix:Landroid/graphics/Matrix;

.field private mRectF:Landroid/graphics/RectF;

.field private mRedCarBitmap:Landroid/graphics/Bitmap;

.field private mRightPoint:[Landroid/graphics/Point;

.field private mRightState:Z

.field private mSpeed:F

.field private mStartX:F

.field private mStartY:F

.field private mStgBeep:I

.field private mStgRect:Lcom/adasplus/data/RectInt;

.field private mTextRect:Landroid/graphics/Rect;

.field private mVpointListener:Lcom/adasplus/adas/view/SVDraw$IAdasVpointListener;

.field private mWidth:I

.field private m_stg_cnt:I

.field private maxBottom:F

.field private maxLeft:F

.field private maxRight:F

.field private maxTop:F

.field private offsetX:I

.field private offsetY:I

.field private p:Landroid/graphics/Paint;

.field private p_text:Landroid/graphics/Paint;

.field private sh:Landroid/view/SurfaceHolder;

.field private taupaintX:F

.field private taupaintY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/adasplus/adas/view/SVDraw;->mIsDraw:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x50

    iput v0, p0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    const/16 v0, 0x2d

    iput v0, p0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    iput v1, p0, Lcom/adasplus/adas/view/SVDraw;->index:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mRectF:Landroid/graphics/RectF;

    iput v2, p0, Lcom/adasplus/adas/view/SVDraw;->mSpeed:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mStgRect:Lcom/adasplus/data/RectInt;

    iput v1, p0, Lcom/adasplus/adas/view/SVDraw;->m_stg_cnt:I

    iput-boolean v1, p0, Lcom/adasplus/adas/view/SVDraw;->isLand:Z

    iput-boolean v1, p0, Lcom/adasplus/adas/view/SVDraw;->isPort:Z

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/adasplus/adas/view/SVDraw;->mDis:F

    iput v2, p0, Lcom/adasplus/adas/view/SVDraw;->mFlow:F

    iput-boolean v1, p0, Lcom/adasplus/adas/view/SVDraw;->mLeftState:Z

    iput-boolean v1, p0, Lcom/adasplus/adas/view/SVDraw;->mRightState:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/adasplus/adas/view/SVDraw;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->sh:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->sh:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->sh:Landroid/view/SurfaceHolder;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adasplus/adas/view/SVDraw;->setZOrderOnTop(Z)V

    iput-object p1, p0, Lcom/adasplus/adas/view/SVDraw;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/adasplus/adas/view/SVDraw;)V
    .locals 0

    invoke-direct {p0}, Lcom/adasplus/adas/view/SVDraw;->setCheckpoint()V

    return-void
.end method

.method static synthetic access$100(Lcom/adasplus/adas/view/SVDraw;)F
    .locals 1

    iget v0, p0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    return v0
.end method

.method static synthetic access$200(Lcom/adasplus/adas/view/SVDraw;)I
    .locals 1

    iget v0, p0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    return v0
.end method

.method static synthetic access$300(Lcom/adasplus/adas/view/SVDraw;)F
    .locals 1

    iget v0, p0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    return v0
.end method

.method static synthetic access$400(Lcom/adasplus/adas/view/SVDraw;)I
    .locals 1

    iget v0, p0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    return v0
.end method

.method static synthetic access$500(Lcom/adasplus/adas/view/SVDraw;)Lcom/adasplus/adas/view/SVDraw$IAdasVpointListener;
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mVpointListener:Lcom/adasplus/adas/view/SVDraw$IAdasVpointListener;

    return-object v0
.end method

.method private getCarBitmap(IZ)Landroid/graphics/Bitmap;
    .locals 7

    const-string v4, "Adas"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    const-string v4, "fcw"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/adas00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v4, 0x9

    if-gt p1, v4, :cond_1

    const-string v4, "0"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v3, 0x1

    :goto_2
    const/16 v4, 0x12

    if-gt v3, v4, :cond_3

    if-ne v3, p1, :cond_2

    invoke-virtual {p0}, Lcom/adasplus/adas/view/SVDraw;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/adasplus/adas/view/AssetUtil;->getInstance(Landroid/content/Context;)Lcom/adasplus/adas/view/AssetUtil;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/adasplus/adas/view/AssetUtil;->getFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :goto_3
    return-object v1

    :cond_0
    const-string v4, "ldw"

    goto :goto_0

    :cond_1
    const-string v4, ""

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_3
.end method

.method private getCarBitmap(Lcom/adasplus/data/RectInt;Z)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adasplus/adas/view/SVDraw;->mRedCarBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adasplus/adas/view/SVDraw;->mRedCarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adasplus/adas/view/SVDraw;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/adasplus/adas/view/AssetUtil;->getInstance(Landroid/content/Context;)Lcom/adasplus/adas/view/AssetUtil;

    move-result-object v2

    const-string v3, "resources/red_car.png"

    invoke-virtual {v2, v3}, Lcom/adasplus/adas/view/AssetUtil;->getFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/adasplus/adas/view/SVDraw;->mRedCarBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v2, p0, Lcom/adasplus/adas/view/SVDraw;->mBlueCarBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/adasplus/adas/view/SVDraw;->mBlueCarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/adasplus/adas/view/SVDraw;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/adasplus/adas/view/AssetUtil;->getInstance(Landroid/content/Context;)Lcom/adasplus/adas/view/AssetUtil;

    move-result-object v2

    const-string v3, "resources/bule_car.png"

    invoke-virtual {v2, v3}, Lcom/adasplus/adas/view/AssetUtil;->getFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/adasplus/adas/view/SVDraw;->mBlueCarBitmap:Landroid/graphics/Bitmap;

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mRedCarBitmap:Landroid/graphics/Bitmap;

    :goto_0
    iget-object v2, p0, Lcom/adasplus/adas/view/SVDraw;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/adasplus/data/RectInt;->getX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/adasplus/data/RectInt;->getY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/adasplus/data/RectInt;->getX()I

    move-result v6

    invoke-virtual {p1}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {p1}, Lcom/adasplus/data/RectInt;->getY()I

    move-result v9

    invoke-virtual {p1}, Lcom/adasplus/data/RectInt;->getH()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v2, v3, v4, v6, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/adasplus/adas/view/SVDraw;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v7, v2, v3

    iget-object v2, p0, Lcom/adasplus/adas/view/SVDraw;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v8, v2, v3

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mBlueCarBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private getContourBitmap(Lcom/adasplus/data/RectInt;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mCarContourBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mCarContourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adasplus/adas/view/AssetUtil;->getInstance(Landroid/content/Context;)Lcom/adasplus/adas/view/AssetUtil;

    move-result-object v0

    const-string v2, "resources/car_contour.png"

    invoke-virtual {v0, v2}, Lcom/adasplus/adas/view/AssetUtil;->getFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mCarContourBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/adasplus/data/RectInt;->getX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/adasplus/data/RectInt;->getY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/adasplus/data/RectInt;->getX()I

    move-result v4

    invoke-virtual {p1}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/adasplus/data/RectInt;->getY()I

    move-result v6

    invoke-virtual {p1}, Lcom/adasplus/data/RectInt;->getH()I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v2, p0, Lcom/adasplus/adas/view/SVDraw;->mCarContourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v7, v0, v2

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v2, p0, Lcom/adasplus/adas/view/SVDraw;->mCarContourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v8, v0, v2

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mCarContourBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/adasplus/adas/view/SVDraw;->mCarContourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/adasplus/adas/view/SVDraw;->mCarContourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private initCarBitmap()V
    .locals 2

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mBlueCarBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adasplus/adas/view/AssetUtil;->getInstance(Landroid/content/Context;)Lcom/adasplus/adas/view/AssetUtil;

    move-result-object v0

    const-string v1, "resources/blue_car.png"

    invoke-virtual {v0, v1}, Lcom/adasplus/adas/view/AssetUtil;->getFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mBlueCarBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mRedCarBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adasplus/adas/view/AssetUtil;->getInstance(Landroid/content/Context;)Lcom/adasplus/adas/view/AssetUtil;

    move-result-object v0

    const-string v1, "resources/red_car.png"

    invoke-virtual {v0, v1}, Lcom/adasplus/adas/view/AssetUtil;->getFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mRedCarBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mCarContourBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adasplus/adas/view/AssetUtil;->getInstance(Landroid/content/Context;)Lcom/adasplus/adas/view/AssetUtil;

    move-result-object v0

    const-string v1, "resources/car_contour.png"

    invoke-virtual {v0, v1}, Lcom/adasplus/adas/view/AssetUtil;->getFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mCarContourBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adasplus/adas/view/AssetUtil;->getInstance(Landroid/content/Context;)Lcom/adasplus/adas/view/AssetUtil;

    move-result-object v0

    const-string v1, "resources/ldw_line.png"

    invoke-virtual {v0, v1}, Lcom/adasplus/adas/view/AssetUtil;->getFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mLdwLeft:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adasplus/adas/view/AssetUtil;->getInstance(Landroid/content/Context;)Lcom/adasplus/adas/view/AssetUtil;

    move-result-object v0

    const-string v1, "resources/ldw_left.png"

    invoke-virtual {v0, v1}, Lcom/adasplus/adas/view/AssetUtil;->getFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mLdwLeft:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mLdwRight:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adasplus/adas/view/AssetUtil;->getInstance(Landroid/content/Context;)Lcom/adasplus/adas/view/AssetUtil;

    move-result-object v0

    const-string v1, "resources/ldw_right.png"

    invoke-virtual {v0, v1}, Lcom/adasplus/adas/view/AssetUtil;->getFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mLdwRight:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mCrossingRed:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adasplus/adas/view/AssetUtil;->getInstance(Landroid/content/Context;)Lcom/adasplus/adas/view/AssetUtil;

    move-result-object v0

    const-string v1, "resources/zebra_crossing_red.png"

    invoke-virtual {v0, v1}, Lcom/adasplus/adas/view/AssetUtil;->getFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mCrossingRed:Landroid/graphics/Bitmap;

    :cond_6
    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mCrossingWhite:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/adasplus/adas/view/AssetUtil;->getInstance(Landroid/content/Context;)Lcom/adasplus/adas/view/AssetUtil;

    move-result-object v0

    const-string v1, "resources/zebra_crossing_white.png"

    invoke-virtual {v0, v1}, Lcom/adasplus/adas/view/AssetUtil;->getFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mCrossingWhite:Landroid/graphics/Bitmap;

    :cond_7
    return-void
.end method

.method private releaseCarBitmap()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mBlueCarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mBlueCarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mBlueCarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->mBlueCarBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mRedCarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mRedCarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mRedCarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->mRedCarBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mCarContourBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mCarContourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mCarContourBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->mCarContourBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mLdwLeft:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mLdwLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mLdwLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->mLdwLeft:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mLdwRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mLdwRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mLdwRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->mLdwRight:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mCrossingWhite:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mCrossingWhite:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mCrossingWhite:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->mCrossingWhite:Landroid/graphics/Bitmap;

    :cond_6
    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mCrossingRed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mCrossingRed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mCrossingRed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->mCrossingRed:Landroid/graphics/Bitmap;

    :cond_7
    return-void
.end method

.method private releaseCarBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    :cond_0
    return-void
.end method

.method private setCheckpoint()V
    .locals 11

    iget-object v9, p0, Lcom/adasplus/adas/view/SVDraw;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->sh:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v10, p0, Lcom/adasplus/adas/view/SVDraw;->sh:Landroid/view/SurfaceHolder;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->p_text:Landroid/graphics/Paint;

    const/high16 v2, 0x42700000    # 60.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->p_text:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    iget v8, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v6, v7, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->p_text:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->p:Landroid/graphics/Paint;

    const-string v2, "#02DEFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget v1, Lcom/adasplus/adas/view/SVDraw;->sConfigX:F

    iget v2, p0, Lcom/adasplus/adas/view/SVDraw;->maxLeft:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    sget v1, Lcom/adasplus/adas/view/SVDraw;->sConfigX:F

    iget v2, p0, Lcom/adasplus/adas/view/SVDraw;->maxRight:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->p:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0xfc

    const/16 v4, 0x19

    const/16 v5, 0x19

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    const-string v1, "\u8bf7\u5bf9\u9f50\u524d\u8f66\u4e2d\u5fc3"

    sget v2, Lcom/adasplus/adas/view/SVDraw;->sConfigX:F

    iget v3, p0, Lcom/adasplus/adas/view/SVDraw;->mHeight:I

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    iget-object v4, p0, Lcom/adasplus/adas/view/SVDraw;->p_text:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget v1, Lcom/adasplus/adas/view/SVDraw;->sConfigX:F

    const/4 v2, 0x0

    sget v3, Lcom/adasplus/adas/view/SVDraw;->sConfigX:F

    iget v4, p0, Lcom/adasplus/adas/view/SVDraw;->mHeight:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/adasplus/adas/view/SVDraw;->p:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sget-object v1, Lcom/adasplus/adas/view/SVDraw;->mPortRect:Landroid/graphics/Rect;

    sget v2, Lcom/adasplus/adas/view/SVDraw;->sConfigX:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, -0x1e

    const/4 v3, 0x0

    sget v4, Lcom/adasplus/adas/view/SVDraw;->sConfigX:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1e

    iget v5, p0, Lcom/adasplus/adas/view/SVDraw;->mHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    sget v1, Lcom/adasplus/adas/view/SVDraw;->sConfigY:F

    iget v2, p0, Lcom/adasplus/adas/view/SVDraw;->maxTop:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    sget v1, Lcom/adasplus/adas/view/SVDraw;->sConfigY:F

    iget v2, p0, Lcom/adasplus/adas/view/SVDraw;->maxBottom:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->p:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0xfc

    const/16 v4, 0x19

    const/16 v5, 0x19

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    const/4 v1, 0x0

    sget v2, Lcom/adasplus/adas/view/SVDraw;->sConfigY:F

    iget v3, p0, Lcom/adasplus/adas/view/SVDraw;->mWidth:I

    int-to-float v3, v3

    sget v4, Lcom/adasplus/adas/view/SVDraw;->sConfigY:F

    iget-object v5, p0, Lcom/adasplus/adas/view/SVDraw;->p:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const-string v1, "\u8bf7\u5bf9\u9f50\u5730\u5e73\u7ebf"

    iget v2, p0, Lcom/adasplus/adas/view/SVDraw;->mWidth:I

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    sget v3, Lcom/adasplus/adas/view/SVDraw;->sConfigY:F

    const/high16 v4, 0x41200000    # 10.0f

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/adasplus/adas/view/SVDraw;->p_text:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    sget-object v1, Lcom/adasplus/adas/view/SVDraw;->mLandRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    sget v3, Lcom/adasplus/adas/view/SVDraw;->sConfigY:F

    float-to-int v3, v3

    add-int/lit8 v3, v3, -0x1e

    iget v4, p0, Lcom/adasplus/adas/view/SVDraw;->mWidth:I

    sget v5, Lcom/adasplus/adas/view/SVDraw;->sConfigY:F

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x1e

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->sh:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->p:Landroid/graphics/Paint;

    const-string v2, "#02DEFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_4
    :try_start_5
    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->p:Landroid/graphics/Paint;

    const-string v2, "#02DEFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public clearDraw()V
    .locals 3

    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->sh:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->sh:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawCheckLine()V
    .locals 2

    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->mHandler:Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->mHandler:Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;

    invoke-virtual {v1}, Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->mHandler:Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;

    invoke-virtual {v1, v0}, Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public drawResult(Lcom/adasplus/data/DrawInfo;)V
    .locals 40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adasplus/adas/view/SVDraw;->mLock:Ljava/lang/Object;

    move-object/from16 v32, v0

    monitor-enter v32

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/adasplus/data/DrawInfo;->getLdwResults()Lcom/adasplus/data/LdwInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwInfo:Lcom/adasplus/data/LdwInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/adasplus/data/DrawInfo;->getFcwResults()Lcom/adasplus/data/FcwInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mFcwInfo:Lcom/adasplus/data/FcwInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/adasplus/data/DrawInfo;->getConfig()Lcom/adasplus/data/AdasConfig;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual/range {p1 .. p1}, Lcom/adasplus/data/DrawInfo;->getStgBeep()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/adasplus/adas/view/SVDraw;->mStgBeep:I

    invoke-virtual/range {p1 .. p1}, Lcom/adasplus/data/DrawInfo;->getSpeed()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/adasplus/adas/view/SVDraw;->mSpeed:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    if-nez v3, :cond_0

    monitor-exit v32

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->sh:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adasplus/adas/view/SVDraw;->sh:Landroid/view/SurfaceHolder;

    move-object/from16 v33, v0

    monitor-enter v33
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->p:Landroid/graphics/Paint;

    const/16 v5, 0xff

    const/4 v7, 0x5

    const/16 v8, 0xdd

    const/16 v34, 0xff

    move/from16 v0, v34

    invoke-static {v5, v7, v8, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v3}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v3}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v5}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    invoke-virtual {v3, v5}, Lcom/adasplus/data/AdasConfig;->setX(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v3}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v3

    sput v3, Lcom/adasplus/adas/view/SVDraw;->sConfigX:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v5}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    invoke-virtual {v3, v5}, Lcom/adasplus/data/AdasConfig;->setY(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v3}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v3

    sput v3, Lcom/adasplus/adas/view/SVDraw;->sConfigY:F

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v3}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v3

    const/high16 v5, 0x43160000    # 150.0f

    sub-float/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v5}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v5}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v5

    const/high16 v7, 0x43160000    # 150.0f

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v7}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->p:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v3}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v5}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v5

    const/high16 v7, 0x41200000    # 10.0f

    sub-float v4, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v5}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v7}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v7

    const/high16 v8, 0x41200000    # 10.0f

    add-float v6, v7, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->p:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v3}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v3

    const/high16 v5, 0x43160000    # 150.0f

    sub-float/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v5}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v5

    const/high16 v7, 0x40400000    # 3.0f

    sub-float v4, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v5}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v5

    const/high16 v7, 0x43160000    # 150.0f

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v7}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v7

    const/high16 v8, 0x40400000    # 3.0f

    add-float v6, v7, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->p:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v3}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v3

    const/high16 v5, 0x43160000    # 150.0f

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v5}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v5

    const/high16 v7, 0x40400000    # 3.0f

    sub-float v4, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v5}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v5

    const/high16 v7, 0x43160000    # 150.0f

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v7}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v7

    const/high16 v8, 0x40400000    # 3.0f

    add-float v6, v7, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->p:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-direct/range {p0 .. p0}, Lcom/adasplus/adas/view/SVDraw;->initCarBitmap()V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mFcwInfo:Lcom/adasplus/data/FcwInfo;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mFcwInfo:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v3}, Lcom/adasplus/data/FcwInfo;->getState()I

    move-result v13

    const/16 v18, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mFcwInfo:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v3}, Lcom/adasplus/data/FcwInfo;->getCarNum()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->p_text:Landroid/graphics/Paint;

    const-string v5, "#05E2FF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mFcwInfo:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v3}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v3

    aget-object v3, v3, v18

    invoke-virtual {v3}, Lcom/adasplus/data/CarInfo;->getDis()F

    move-result v3

    float-to-int v14, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mFcwInfo:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v3}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v3

    aget-object v3, v3, v18

    invoke-virtual {v3}, Lcom/adasplus/data/CarInfo;->getCarRect()Lcom/adasplus/data/RectInt;

    move-result-object v12

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getY()I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v3, v5

    float-to-double v0, v3

    move-wide/from16 v34, v0

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v3, v5

    float-to-double v0, v3

    move-wide/from16 v36, v0

    const-wide v38, 0x3fb47ae147ae147bL    # 0.08

    mul-double v36, v36, v38

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-int v3, v0

    invoke-virtual {v12, v3}, Lcom/adasplus/data/RectInt;->setY(I)V

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getX()I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v3, v5

    float-to-double v0, v3

    move-wide/from16 v34, v0

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getH()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v3, v5

    float-to-double v0, v3

    move-wide/from16 v36, v0

    const-wide v38, 0x3fb47ae147ae147bL    # 0.08

    mul-double v36, v36, v38

    sub-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-int v3, v0

    invoke-virtual {v12, v3}, Lcom/adasplus/data/RectInt;->setX(I)V

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v3, v5

    float-to-double v0, v3

    move-wide/from16 v34, v0

    const-wide v36, 0x3ff28f5c28f5c28fL    # 1.16

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-int v3, v0

    invoke-virtual {v12, v3}, Lcom/adasplus/data/RectInt;->setW(I)V

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getH()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v3, v5

    float-to-double v0, v3

    move-wide/from16 v34, v0

    const-wide v36, 0x3ff28f5c28f5c28fL    # 1.16

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-int v3, v0

    invoke-virtual {v12, v3}, Lcom/adasplus/data/RectInt;->setH(I)V

    if-eqz v13, :cond_2

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->p_text:Landroid/graphics/Paint;

    const-string v5, "#FF041B"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mFcwInfo:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v3}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v3

    aget-object v3, v3, v18

    invoke-virtual {v3}, Lcom/adasplus/data/CarInfo;->getState()I

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mFcwInfo:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v3}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v3

    aget-object v3, v3, v18

    invoke-virtual {v3}, Lcom/adasplus/data/CarInfo;->getCarRect()Lcom/adasplus/data/RectInt;

    move-result-object v16

    :cond_3
    if-eqz v13, :cond_6

    if-nez v18, :cond_6

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Lcom/adasplus/adas/view/SVDraw;->getCarBitmap(Lcom/adasplus/data/RectInt;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getY()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v10, v3, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v3}, Lcom/adasplus/data/AdasConfig;->getIsCalibCredible()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "m"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->p_text:Landroid/graphics/Paint;

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->p_text:Landroid/graphics/Paint;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v23

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v23, v3

    if-gtz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mTextRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getX()I

    move-result v5

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getY()I

    move-result v7

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v8

    div-int/lit8 v8, v8, 0xa

    sub-int/2addr v7, v8

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getX()I

    move-result v8

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v34

    add-int v8, v8, v34

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getY()I

    move-result v34

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v35

    div-int/lit8 v35, v35, 0xa

    sub-int v34, v34, v35

    move/from16 v0, v34

    invoke-virtual {v3, v5, v7, v8, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->p_text:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v24, v0

    move-object/from16 v0, v17

    iget v11, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mTextRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v24, v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v11, v5

    sub-float/2addr v3, v5

    float-to-int v9, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mTextRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    add-int/lit8 v5, v9, -0x5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->p_text:Landroid/graphics/Paint;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v3, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getX()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v23, v5

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr v5, v7

    sub-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mTextRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getY()I

    move-result v5

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v7

    div-int/lit8 v7, v7, 0xa

    sub-int/2addr v5, v7

    move/from16 v0, v19

    int-to-float v7, v0

    add-float v7, v7, v23

    float-to-int v7, v7

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getY()I

    move-result v8

    invoke-virtual {v12}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v34

    div-int/lit8 v34, v34, 0xa

    sub-int v8, v8, v34

    move/from16 v0, v19

    invoke-virtual {v3, v0, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    :catchall_0
    move-exception v3

    monitor-exit v33
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    :catchall_1
    move-exception v3

    monitor-exit v32
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwInfo:Lcom/adasplus/data/LdwInfo;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v3}, Lcom/adasplus/data/AdasConfig;->getIsLdwEnable()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwInfo:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v3}, Lcom/adasplus/data/LdwInfo;->getLeft()Lcom/adasplus/data/LaneInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adasplus/data/LaneInfo;->getIsCredible()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwInfo:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v3}, Lcom/adasplus/data/LdwInfo;->getRight()Lcom/adasplus/data/LaneInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adasplus/data/LaneInfo;->getIsCredible()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_10

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwInfo:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v3}, Lcom/adasplus/data/LdwInfo;->getLeft()Lcom/adasplus/data/LaneInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adasplus/data/LaneInfo;->getPoints()[Landroid/graphics/Point;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwInfo:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v3}, Lcom/adasplus/data/LdwInfo;->getRight()Lcom/adasplus/data/LaneInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adasplus/data/LaneInfo;->getPoints()[Landroid/graphics/Point;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/high16 v15, 0x40a00000    # 5.0f

    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcom/adasplus/data/RectInt;->getY()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/adasplus/data/RectInt;->getH()I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    cmpl-float v3, v3, v5

    if-lez v3, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcom/adasplus/data/RectInt;->getY()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/adasplus/data/RectInt;->getH()I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    cmpl-float v3, v3, v5

    if-lez v3, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcom/adasplus/data/RectInt;->getY()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/adasplus/data/RectInt;->getH()I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    sub-float/2addr v3, v5

    const/high16 v5, 0x41a00000    # 20.0f

    sub-float v15, v3, v5

    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/adasplus/adas/view/SVDraw;->mDis:F

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v3, v5

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v5, v15

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/adasplus/adas/view/SVDraw;->mDis:F

    const v3, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    const v5, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    mul-float/2addr v5, v7

    add-float v28, v3, v5

    const v3, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    const v5, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float/2addr v5, v7

    add-float v30, v3, v5

    const v3, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    const v5, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    mul-float/2addr v5, v7

    add-float v29, v3, v5

    move/from16 v31, v30

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwInfo:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v3}, Lcom/adasplus/data/LdwInfo;->getState()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwInfo:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v3}, Lcom/adasplus/data/LdwInfo;->getState()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_17

    :cond_b
    sub-float v3, v29, v28

    const/high16 v5, 0x40400000    # 3.0f

    div-float v26, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x3

    int-to-float v0, v3

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwInfo:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v3}, Lcom/adasplus/data/LdwInfo;->getState()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_15

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/adasplus/adas/view/SVDraw;->mRightState:Z

    if-nez v3, :cond_14

    const/16 v3, 0x8

    new-array v4, v3, [F

    const/4 v3, 0x0

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x3

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x6

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/16 v3, 0x8

    new-array v6, v3, [F

    const/4 v3, 0x0

    sub-float v5, v28, v26

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v5, v5

    add-float v5, v5, v30

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v5, v5

    add-float v5, v5, v28

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v5, v5

    add-float v5, v5, v30

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    sub-float v5, v5, v27

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v4

    shr-int/lit8 v8, v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLeft:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :goto_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftState:Z

    const/16 v3, 0x8

    new-array v4, v3, [F

    const/4 v3, 0x0

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x3

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x6

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/16 v3, 0x8

    new-array v6, v3, [F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v5, v5

    add-float v5, v5, v29

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v5, v5

    add-float v5, v5, v31

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x2

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v26, v5

    add-float v5, v5, v29

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v5, v5

    add-float v5, v5, v31

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    const/high16 v7, 0x40400000    # 3.0f

    div-float v7, v27, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v4

    shr-int/lit8 v8, v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_c
    :goto_5
    const/16 v3, 0x8

    new-array v4, v3, [F

    const/4 v3, 0x0

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mCrossingRed:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x3

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mCrossingRed:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mCrossingRed:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x6

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mCrossingRed:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/16 v3, 0x8

    new-array v6, v3, [F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v5, v5

    add-float v5, v5, v28

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v5, v5

    add-float v5, v5, v31

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v5, v5

    add-float v5, v5, v29

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v5, v5

    add-float v5, v5, v31

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    add-float v5, v5, v27

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->mDis:F

    add-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    sub-float v5, v5, v27

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->mDis:F

    add-float/2addr v5, v7

    aput v5, v6, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v4

    shr-int/lit8 v8, v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mCrossingRed:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/adasplus/adas/view/SVDraw;->index:I

    add-int/lit8 v5, v3, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwInfo:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v3}, Lcom/adasplus/data/LdwInfo;->getState()I

    move-result v3

    if-gtz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mFcwInfo:Lcom/adasplus/data/FcwInfo;

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mFcwInfo:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v3}, Lcom/adasplus/data/FcwInfo;->getState()I

    move-result v3

    const/4 v7, 0x3

    if-ne v3, v7, :cond_19

    :cond_d
    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/adasplus/adas/view/SVDraw;->getCarBitmap(IZ)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_10

    const/16 v3, 0x8

    new-array v4, v3, [F

    const/4 v3, 0x0

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x3

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x4

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x5

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x6

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x7

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v5

    div-int/lit8 v25, v3, 0x2

    const/16 v3, 0x8

    new-array v6, v3, [F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v5, v5, v25

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->mDis:F

    add-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int v5, v5, v25

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->mDis:F

    add-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->mDis:F

    add-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->mDis:F

    add-float/2addr v5, v7

    aput v5, v6, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v4

    shr-int/lit8 v8, v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    const-wide v34, 0x3fc3333333333333L    # 0.15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/adasplus/adas/view/SVDraw;->mSpeed:F

    float-to-double v0, v3

    move-wide/from16 v36, v0

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v3, v0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/adasplus/adas/view/SVDraw;->mCount:F

    const-string v3, "Adas"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCount:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->mCount:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v10, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/adasplus/adas/view/SVDraw;->mCount:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/adasplus/adas/view/SVDraw;->mCount:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/adasplus/adas/view/SVDraw;->mFlow:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->mCount:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/adasplus/adas/view/SVDraw;->mFlow:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/adasplus/adas/view/SVDraw;->mFlow:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/adasplus/adas/view/SVDraw;->index:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/adasplus/adas/view/SVDraw;->index:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/adasplus/adas/view/SVDraw;->mFlow:F

    :cond_e
    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/adasplus/adas/view/SVDraw;->index:I

    const/16 v5, 0x12

    if-lt v3, v5, :cond_f

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/adasplus/adas/view/SVDraw;->index:I

    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/adasplus/adas/view/SVDraw;->releaseCarBitmap(Landroid/graphics/Bitmap;)V

    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/adasplus/adas/view/SVDraw;->mStgBeep:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/adasplus/adas/view/SVDraw;->m_stg_cnt:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/adasplus/adas/view/SVDraw;->m_stg_cnt:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/adasplus/adas/view/SVDraw;->mStgBeep:I

    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Lcom/adasplus/adas/view/SVDraw;->m_stg_cnt:I

    if-lez v3, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/adasplus/adas/view/SVDraw;->m_stg_cnt:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/adasplus/adas/view/SVDraw;->m_stg_cnt:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/adasplus/adas/view/SVDraw;->m_stg_cnt:I

    const/16 v5, 0x14

    if-lt v3, v5, :cond_1b

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/adasplus/adas/view/SVDraw;->m_stg_cnt:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mStgRect:Lcom/adasplus/data/RectInt;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/adasplus/data/RectInt;->setH(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mStgRect:Lcom/adasplus/data/RectInt;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/adasplus/data/RectInt;->setX(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mStgRect:Lcom/adasplus/data/RectInt;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/adasplus/data/RectInt;->setW(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mStgRect:Lcom/adasplus/data/RectInt;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/adasplus/data/RectInt;->setY(I)V

    :cond_12
    :goto_9
    monitor-exit v33
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->sh:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_13
    monitor-exit v32
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x8

    :try_start_5
    new-array v4, v3, [F

    const/4 v3, 0x0

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x3

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x6

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/16 v3, 0x8

    new-array v6, v3, [F

    const/4 v3, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v26, v5

    sub-float v5, v28, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v5, v5

    add-float v5, v5, v30

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v5, v5

    add-float v5, v5, v28

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v5, v5

    add-float v5, v5, v30

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    const/high16 v7, 0x40400000    # 3.0f

    div-float v7, v27, v7

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v4

    shr-int/lit8 v8, v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwInfo:Lcom/adasplus/data/LdwInfo;

    invoke-virtual {v3}, Lcom/adasplus/data/LdwInfo;->getState()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftState:Z

    if-nez v3, :cond_16

    const/16 v3, 0x8

    new-array v4, v3, [F

    const/4 v3, 0x0

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwRight:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x3

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwRight:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwRight:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x6

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwRight:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/16 v3, 0x8

    new-array v6, v3, [F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v5, v5

    add-float v5, v5, v29

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v5, v5

    add-float v5, v5, v31

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x2

    add-float v5, v29, v26

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v5, v5

    add-float v5, v5, v31

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    add-float v5, v5, v27

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v4

    shr-int/lit8 v8, v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwRight:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :goto_a
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/adasplus/adas/view/SVDraw;->mRightState:Z

    const/16 v3, 0x8

    new-array v4, v3, [F

    const/4 v3, 0x0

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x3

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x6

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/16 v3, 0x8

    new-array v6, v3, [F

    const/4 v3, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v26, v5

    sub-float v5, v28, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v5, v5

    add-float v5, v5, v30

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v5, v5

    add-float v5, v5, v28

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v5, v5

    add-float v5, v5, v30

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    const/high16 v7, 0x40400000    # 3.0f

    div-float v7, v27, v7

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v4

    shr-int/lit8 v8, v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_16
    const/16 v3, 0x8

    new-array v4, v3, [F

    const/4 v3, 0x0

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x3

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x6

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/16 v3, 0x8

    new-array v6, v3, [F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v5, v5

    add-float v5, v5, v29

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v5, v5

    add-float v5, v5, v31

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x2

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v26, v5

    add-float v5, v5, v29

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v5, v5

    add-float v5, v5, v31

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    const/high16 v7, 0x40400000    # 3.0f

    div-float v7, v27, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v4

    shr-int/lit8 v8, v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_a

    :cond_17
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/adasplus/adas/view/SVDraw;->mRightState:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftState:Z

    sub-float v3, v29, v28

    const/high16 v5, 0x41000000    # 8.0f

    div-float v26, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0xa

    int-to-float v0, v3

    move/from16 v27, v0

    const/16 v3, 0x8

    new-array v4, v3, [F

    const/4 v3, 0x0

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x3

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x6

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/16 v3, 0x8

    new-array v6, v3, [F

    const/4 v3, 0x0

    sub-float v5, v28, v26

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v5, v5

    add-float v5, v5, v30

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v5, v5

    add-float v5, v5, v28

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v5, v5

    add-float v5, v5, v30

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    sub-float v5, v5, v27

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v4

    shr-int/lit8 v8, v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const/16 v3, 0x8

    new-array v6, v3, [F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v5, v5

    add-float v5, v5, v29

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v5, v5

    add-float v5, v5, v31

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x2

    add-float v5, v29, v26

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v5, v5

    add-float v5, v5, v31

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    add-float v5, v5, v27

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v4

    shr-int/lit8 v8, v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mLdwLine:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mFcwInfo:Lcom/adasplus/data/FcwInfo;

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mFcwInfo:Lcom/adasplus/data/FcwInfo;

    invoke-virtual {v3}, Lcom/adasplus/data/FcwInfo;->getState()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_18

    const/16 v3, 0x8

    new-array v4, v3, [F

    const/4 v3, 0x0

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mCrossingRed:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x3

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mCrossingRed:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mCrossingRed:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x6

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mCrossingRed:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/16 v3, 0x8

    new-array v6, v3, [F

    const/4 v3, 0x0

    const/high16 v5, 0x42480000    # 50.0f

    sub-float v5, v28, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v5, v5

    add-float v5, v5, v31

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x2

    const/high16 v5, 0x42480000    # 50.0f

    add-float v5, v5, v29

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v5, v5

    add-float v5, v5, v31

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/lit8 v5, v5, 0x50

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->mDis:F

    add-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/lit8 v5, v5, -0x50

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->mDis:F

    add-float/2addr v5, v7

    aput v5, v6, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v4

    shr-int/lit8 v8, v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mCrossingRed:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_18
    const/16 v3, 0x8

    new-array v4, v3, [F

    const/4 v3, 0x0

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mCrossingWhite:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x3

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mCrossingWhite:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mCrossingWhite:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/4 v3, 0x6

    const/4 v5, 0x0

    aput v5, v4, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mCrossingWhite:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v3

    const/16 v3, 0x8

    new-array v6, v3, [F

    const/4 v3, 0x0

    const/high16 v5, 0x42480000    # 50.0f

    sub-float v5, v28, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v5, v5

    add-float v5, v5, v31

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x2

    const/high16 v5, 0x42480000    # 50.0f

    add-float v5, v5, v29

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    int-to-float v5, v5

    add-float v5, v5, v31

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/lit8 v5, v5, 0x50

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mRightPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->mDis:F

    add-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/lit8 v5, v5, -0x50

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetX:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v5, v7

    aput v5, v6, v3

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mLeftPoint:[Landroid/graphics/Point;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->offsetY:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/adasplus/adas/view/SVDraw;->mDis:F

    add-float/2addr v5, v7

    aput v5, v6, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v4

    shr-int/lit8 v8, v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mCrossingWhite:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_1a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/adasplus/adas/view/SVDraw;->mCount:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/adasplus/adas/view/SVDraw;->index:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->mCount:F

    add-float/2addr v3, v5

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/adasplus/adas/view/SVDraw;->index:I

    goto/16 :goto_8

    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/adasplus/adas/view/SVDraw;->m_stg_cnt:I

    mul-int/lit8 v3, v3, 0x5

    rsub-int v3, v3, 0x96

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    mul-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/adasplus/adas/view/SVDraw;->m_stg_cnt:I

    mul-int/lit8 v3, v3, 0x4

    rsub-int/lit8 v3, v3, 0x78

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    mul-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mStgRect:Lcom/adasplus/data/RectInt;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v5}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v5

    float-to-int v5, v5

    div-int/lit8 v7, v21, 0x2

    sub-int/2addr v5, v7

    invoke-virtual {v3, v5}, Lcom/adasplus/data/RectInt;->setX(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mStgRect:Lcom/adasplus/data/RectInt;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mConfig:Lcom/adasplus/data/AdasConfig;

    invoke-virtual {v5}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v5

    float-to-int v5, v5

    div-int/lit8 v7, v20, 0x5

    add-int/2addr v5, v7

    div-int/lit8 v7, v20, 0x2

    sub-int/2addr v5, v7

    invoke-virtual {v3, v5}, Lcom/adasplus/data/RectInt;->setY(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mStgRect:Lcom/adasplus/data/RectInt;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/adasplus/data/RectInt;->setW(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mStgRect:Lcom/adasplus/data/RectInt;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/adasplus/data/RectInt;->setH(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mStgRect:Lcom/adasplus/data/RectInt;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/adasplus/adas/view/SVDraw;->getContourBitmap(Lcom/adasplus/data/RectInt;)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adasplus/adas/view/SVDraw;->mStgRect:Lcom/adasplus/data/RectInt;

    invoke-virtual {v3}, Lcom/adasplus/data/RectInt;->getX()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adasplus/adas/view/SVDraw;->mStgRect:Lcom/adasplus/data/RectInt;

    invoke-virtual {v5}, Lcom/adasplus/data/RectInt;->getY()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adasplus/adas/view/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v10, v3, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_9
.end method

.method public getBtnBottom()I
    .locals 1

    iget v0, p0, Lcom/adasplus/adas/view/SVDraw;->mBtnBottom:I

    return v0
.end method

.method public getBtnLeft()I
    .locals 1

    iget v0, p0, Lcom/adasplus/adas/view/SVDraw;->mBtnLeft:I

    return v0
.end method

.method public getBtnRight()I
    .locals 1

    iget v0, p0, Lcom/adasplus/adas/view/SVDraw;->mBtnRight:I

    return v0
.end method

.method public getBtnTop()I
    .locals 1

    iget v0, p0, Lcom/adasplus/adas/view/SVDraw;->mBtnTop:I

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mHandler:Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;

    return-object v0
.end method

.method public isDraw()Z
    .locals 1

    sget-boolean v0, Lcom/adasplus/adas/view/SVDraw;->mIsDraw:Z

    return v0
.end method

.method public processResult(Lcom/adasplus/data/DrawInfo;)V
    .locals 2

    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->mHandler:Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->mHandler:Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;

    invoke-virtual {v1}, Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->mHandler:Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;

    invoke-virtual {v1, v0}, Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setCheckpointXY()V
    .locals 2

    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->mHandler:Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->mHandler:Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;

    invoke-virtual {v1}, Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x99

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->mHandler:Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;

    invoke-virtual {v1, v0}, Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setIsDraw(Z)V
    .locals 0

    sput-boolean p1, Lcom/adasplus/adas/view/SVDraw;->mIsDraw:Z

    return-void
.end method

.method public setVpointListener(Lcom/adasplus/adas/view/SVDraw$IAdasVpointListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adasplus/adas/view/SVDraw;->mVpointListener:Lcom/adasplus/adas/view/SVDraw$IAdasVpointListener;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    iput p3, p0, Lcom/adasplus/adas/view/SVDraw;->mWidth:I

    iput p4, p0, Lcom/adasplus/adas/view/SVDraw;->mHeight:I

    int-to-float v0, p3

    const/high16 v1, 0x44480000    # 800.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/adasplus/adas/view/SVDraw;->taupaintX:F

    int-to-float v0, p4

    const/high16 v1, 0x43e10000    # 450.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/adasplus/adas/view/SVDraw;->taupaintY:F

    div-int/lit8 v0, p3, 0x2

    div-int/lit8 v1, p4, 0xa

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/adasplus/adas/view/SVDraw;->mBtnLeft:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/adasplus/adas/view/SVDraw;->mBtnTop:I

    div-int/lit8 v0, p3, 0x2

    div-int/lit8 v1, p4, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adasplus/adas/view/SVDraw;->mBtnRight:I

    div-int/lit8 v0, p4, 0xa

    iput v0, p0, Lcom/adasplus/adas/view/SVDraw;->mBtnBottom:I

    div-int/lit8 v0, p3, 0x3

    int-to-float v0, v0

    iput v0, p0, Lcom/adasplus/adas/view/SVDraw;->maxLeft:F

    div-int/lit8 v0, p4, 0x2

    div-int/lit8 v1, p4, 0x8

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/adasplus/adas/view/SVDraw;->maxTop:F

    div-int/lit8 v0, p3, 0x3

    sub-int v0, p3, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/adasplus/adas/view/SVDraw;->maxRight:F

    div-int/lit8 v0, p4, 0x2

    div-int/lit8 v1, p4, 0x6

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/adasplus/adas/view/SVDraw;->maxBottom:F

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/adasplus/adas/view/SVDraw;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->sh:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->sh:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->sh:Landroid/view/SurfaceHolder;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-virtual {p0, v2}, Lcom/adasplus/adas/view/SVDraw;->setZOrderOnTop(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->p:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->p:Landroid/graphics/Paint;

    const-string v1, "#02DEFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->p_text:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->p_text:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->p_text:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->p_text:Landroid/graphics/Paint;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->p_text:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mBtnPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mBtnPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mBtnPaint:Landroid/graphics/Paint;

    const-string v1, "#02DEFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mTextRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/adasplus/data/RectInt;

    invoke-direct {v0}, Lcom/adasplus/data/RectInt;-><init>()V

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mStgRect:Lcom/adasplus/data/RectInt;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/adasplus/adas/view/SVDraw;->mLandRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/adasplus/adas/view/SVDraw;->mPortRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mPolyMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SVDrawThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mDrawThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mDrawThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;

    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->mDrawThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;-><init>(Lcom/adasplus/adas/view/SVDraw;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mHandler:Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;

    const-string v0, "Adas"

    const-string v1, "svdraw surfaceCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    const-string v0, "Adas"

    const-string v1, "svdraw surfaceDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/adasplus/adas/view/SVDraw;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mHandler:Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mHandler:Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;

    const/16 v2, 0x99

    invoke-virtual {v0, v2}, Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mHandler:Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mHandler:Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mHandler:Lcom/adasplus/adas/view/SVDraw$DrawThreadHandler;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/adasplus/adas/view/SVDraw;->mIsDraw:Z

    :cond_0
    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mDrawThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mDrawThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adasplus/adas/view/SVDraw;->mDrawThread:Landroid/os/HandlerThread;

    :cond_2
    invoke-direct {p0}, Lcom/adasplus/adas/view/SVDraw;->releaseCarBitmap()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
