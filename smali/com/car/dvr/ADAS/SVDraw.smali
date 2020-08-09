.class public Lcom/car/dvr/ADAS/SVDraw;
.super Landroid/view/SurfaceView;
.source "SVDraw.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/dvr/ADAS/SVDraw$DrawThread;
    }
.end annotation


# static fields
.field public static final MSG_DRAW:I = 0x1

.field public static final MSG_SETCHECK:I = 0x2

.field public static volatile mIsDraw:Z


# instance fields
.field private OffX:F

.field private OffY:F

.field private OffsetX:I

.field private OffsetY:I

.field private final TAG:Ljava/lang/String;

.field private TaupaintX:F

.field private TaupaintY:F

.field private dst:[F

.field private isLand:Z

.field private isPort:Z

.field private final mADASContentObserver:Landroid/database/ContentObserver;

.field private mAdasConfig:Lcom/adasplus/data/AdasConfig;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBlueCarBitmap:Landroid/graphics/Bitmap;

.field private mBtnBottom:I

.field private mBtnLeft:I

.field private mBtnPaint:Landroid/graphics/Paint;

.field private mBtnRight:I

.field private mBtnTop:I

.field private mDrawAdasCalibration:Z

.field private mDrawThread:Lcom/car/dvr/ADAS/SVDraw$DrawThread;

.field mHandler:Landroid/os/Handler;

.field private mHeight:I

.field mIsDestoryed:Z

.field private volatile mLandRect:Landroid/graphics/Rect;

.field private mLastMotionEvent:Landroid/view/MotionEvent;

.field private mLdwCount:I

.field private mLine:Landroid/graphics/Bitmap;

.field private mListener:Lcom/car/dvr/ADAS/ADAS$IAdasConfigListener;

.field private final mLock:Ljava/lang/Object;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPocilyMatrix:Landroid/graphics/Matrix;

.field private volatile mPortRect:Landroid/graphics/Rect;

.field private mRectF:Landroid/graphics/RectF;

.field private mRedCarBitmap:Landroid/graphics/Bitmap;

.field private mStartX:F

.field private mStartY:F

.field private mSurfaceChanged:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTextRect:Landroid/graphics/Rect;

.field mTouchDownNow:Z

.field private mWidth:I

.field private m_stg_cnt:I

.field private maxBottom:F

.field private maxLeft:F

.field private maxRight:F

.field private maxTop:F

.field private p_text:Landroid/graphics/Paint;

.field private volatile sBakConfigX:F

.field private volatile sConfigX:F

.field private volatile sConfigY:F

.field private sScreenHeight:I

.field private sScreenWidth:I

.field private src:[F

.field private xCenter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/car/dvr/ADAS/SVDraw;->mIsDraw:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/car/dvr/ADAS/SVDraw;->m_stg_cnt:I

    const/16 v1, 0x50

    iput v1, p0, Lcom/car/dvr/ADAS/SVDraw;->OffsetX:I

    const/16 v1, 0x2d

    iput v1, p0, Lcom/car/dvr/ADAS/SVDraw;->OffsetY:I

    const-string v1, "DVR.ADAS.SVDraw"

    iput-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mLock:Ljava/lang/Object;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/car/dvr/ADAS/SVDraw;->sBakConfigX:F

    iput-boolean v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mSurfaceChanged:Z

    iput-boolean v2, p0, Lcom/car/dvr/ADAS/SVDraw;->isLand:Z

    iput-boolean v2, p0, Lcom/car/dvr/ADAS/SVDraw;->isPort:Z

    iput v2, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenWidth:I

    iput v2, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenHeight:I

    iput-boolean v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mDrawAdasCalibration:Z

    iput-boolean v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mTouchDownNow:Z

    iput-boolean v3, p0, Lcom/car/dvr/ADAS/SVDraw;->mIsDestoryed:Z

    new-instance v1, Lcom/car/dvr/ADAS/SVDraw$1;

    invoke-direct {v1, p0}, Lcom/car/dvr/ADAS/SVDraw$1;-><init>(Lcom/car/dvr/ADAS/SVDraw;)V

    iput-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/car/dvr/ADAS/SVDraw$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/car/dvr/ADAS/SVDraw$2;-><init>(Lcom/car/dvr/ADAS/SVDraw;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mADASContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lcom/car/dvr/ADAS/SVDraw;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v2, -0x2

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-virtual {p0, v3}, Lcom/car/dvr/ADAS/SVDraw;->setZOrderOnTop(Z)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/car/dvr/ADAS/SVDraw;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenWidth:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenHeight:I

    invoke-static {p1}, Lcom/car/dvr/AdasFragment;->getADASCalibration(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mDrawAdasCalibration:Z

    return-void
.end method

.method static synthetic access$000(Lcom/car/dvr/ADAS/SVDraw;Lcom/car/dvr/ADAS/DrawInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/car/dvr/ADAS/SVDraw;->setCheckpoint(Lcom/car/dvr/ADAS/DrawInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/car/dvr/ADAS/SVDraw;)F
    .locals 1

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigX:F

    return v0
.end method

.method static synthetic access$102(Lcom/car/dvr/ADAS/SVDraw;F)F
    .locals 0

    iput p1, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigX:F

    return p1
.end method

.method static synthetic access$200(Lcom/car/dvr/ADAS/SVDraw;)F
    .locals 1

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintX:F

    return v0
.end method

.method static synthetic access$300(Lcom/car/dvr/ADAS/SVDraw;)I
    .locals 1

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->OffsetX:I

    return v0
.end method

.method static synthetic access$400(Lcom/car/dvr/ADAS/SVDraw;)F
    .locals 1

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigY:F

    return v0
.end method

.method static synthetic access$402(Lcom/car/dvr/ADAS/SVDraw;F)F
    .locals 0

    iput p1, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigY:F

    return p1
.end method

.method static synthetic access$500(Lcom/car/dvr/ADAS/SVDraw;)F
    .locals 1

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintY:F

    return v0
.end method

.method static synthetic access$600(Lcom/car/dvr/ADAS/SVDraw;)I
    .locals 1

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->OffsetY:I

    return v0
.end method

.method static synthetic access$700(Lcom/car/dvr/ADAS/SVDraw;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mDrawAdasCalibration:Z

    return v0
.end method

.method static synthetic access$702(Lcom/car/dvr/ADAS/SVDraw;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/car/dvr/ADAS/SVDraw;->mDrawAdasCalibration:Z

    return p1
.end method

.method static synthetic access$800(Lcom/car/dvr/ADAS/SVDraw;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private getCarBitmap(Lcom/adasplus/data/RectInt;Z)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mRedCarBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mRedCarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/car/dvr/ADAS/SVDraw;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020061

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mRedCarBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mBlueCarBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mBlueCarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/car/dvr/ADAS/SVDraw;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000e

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mBlueCarBitmap:Landroid/graphics/Bitmap;

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mRedCarBitmap:Landroid/graphics/Bitmap;

    :goto_0
    iget-object v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mRectF:Landroid/graphics/RectF;

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

    iget-object v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v7, v2, v3

    iget-object v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mRectF:Landroid/graphics/RectF;

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
    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBlueCarBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private setCheckpoint(Lcom/car/dvr/ADAS/DrawInfo;)V
    .locals 13

    const/high16 v12, 0x40000000    # 2.0f

    iget-boolean v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mTouchDownNow:Z

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/car/dvr/ADAS/DrawInfo;->getConfig()Lcom/adasplus/data/AdasConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v1

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->OffsetY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintY:F

    mul-float/2addr v1, v2

    invoke-virtual {v8, v1}, Lcom/adasplus/data/AdasConfig;->setY(F)V

    invoke-virtual {v8}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v1

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->OffsetX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintX:F

    mul-float/2addr v1, v2

    invoke-virtual {v8, v1}, Lcom/adasplus/data/AdasConfig;->setX(F)V

    invoke-virtual {v8}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v1

    iput v1, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigX:F

    invoke-virtual {v8}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v1

    iput v1, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigY:F

    :cond_2
    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    const-string v1, "DVR.ADAS.SVDraw"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCheckpoint canvas = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sConfigX="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sConfigY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mDrawAdasCalibration:Z

    if-eqz v1, :cond_5

    iget-object v11, p0, Lcom/car/dvr/ADAS/SVDraw;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v11

    :try_start_0
    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnTop:I

    int-to-float v2, v2

    iget v3, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnRight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnBottom:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mTextRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnLeft:I

    iget v3, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnTop:I

    iget v4, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnRight:I

    iget v5, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnBottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->p_text:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    iget v10, v9, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v7, v9, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mTextRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v10, v12

    sub-float/2addr v1, v2

    div-float v2, v7, v12

    sub-float/2addr v1, v2

    float-to-int v6, v1

    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->p_text:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigX:F

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->maxLeft:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigX:F

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->maxRight:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    :cond_3
    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0xfc

    const/16 v4, 0x19

    const/16 v5, 0x19

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget v1, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigX:F

    const/4 v2, 0x0

    iget v3, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigX:F

    iget v4, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenHeight:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mPortRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigX:F

    float-to-int v2, v2

    add-int/lit8 v2, v2, -0x1e

    const/4 v3, 0x0

    iget v4, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigX:F

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1e

    iget v5, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget v1, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigY:F

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->maxTop:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigY:F

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->maxBottom:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_7

    :cond_4
    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0xfc

    const/16 v4, 0x19

    const/16 v5, 0x19

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    const/4 v1, 0x0

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigY:F

    iget v3, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigY:F

    iget-object v5, p0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mLandRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget v3, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigY:F

    float-to-int v3, v3

    add-int/lit8 v3, v3, -0x1e

    iget v4, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenWidth:I

    iget v5, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigY:F

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x1e

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lcom/car/dvr/ADAS/SVDraw;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mTextRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v6

    iget-object v4, p0, Lcom/car/dvr/ADAS/SVDraw;->p_text:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_7
    :try_start_2
    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method clearDraw()V
    .locals 2

    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawResult(Lcom/car/dvr/ADAS/DrawInfo;)V
    .locals 46

    invoke-virtual/range {p1 .. p1}, Lcom/car/dvr/ADAS/DrawInfo;->getLdwResults()Lcom/adasplus/data/LdwInfo;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/car/dvr/ADAS/DrawInfo;->getFcwResults()Lcom/adasplus/data/FcwInfo;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/car/dvr/ADAS/DrawInfo;->getConfig()Lcom/adasplus/data/AdasConfig;

    move-result-object v17

    if-eqz v21, :cond_0

    if-eqz v18, :cond_0

    if-nez v17, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/SVDraw;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v44, v0

    monitor-enter v44

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mIsDestoryed:Z

    if-eqz v3, :cond_2

    monitor-exit v44

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v44
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    if-eqz v2, :cond_1c

    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    const v4, -0xffff01

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->p_text:Landroid/graphics/Paint;

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->p_text:Landroid/graphics/Paint;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    const v4, -0xffff01

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->p_text:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v40, v0

    move-object/from16 v0, v19

    iget v13, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mTextRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v40, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v13, v4

    sub-float/2addr v3, v4

    float-to-int v11, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->p_text:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/dvr/ADAS/SVDraw;->OffsetY:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintY:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/adasplus/data/AdasConfig;->setY(F)V

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/dvr/ADAS/SVDraw;->OffsetX:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintX:F

    mul-float/2addr v3, v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/adasplus/data/AdasConfig;->setX(F)V

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/car/dvr/ADAS/SVDraw;->sConfigX:F

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/car/dvr/ADAS/SVDraw;->sConfigY:F

    if-eqz v21, :cond_4

    invoke-virtual/range {v21 .. v21}, Lcom/adasplus/data/LdwInfo;->getLeft()Lcom/adasplus/data/LaneInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adasplus/data/LaneInfo;->getIsCredible()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    invoke-virtual/range {v21 .. v21}, Lcom/adasplus/data/LdwInfo;->getRight()Lcom/adasplus/data/LaneInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adasplus/data/LaneInfo;->getIsCredible()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mLdwCount:I

    const/16 v4, 0x96

    if-lt v3, v4, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getIsCalibCredible()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v3

    const/high16 v4, 0x43160000    # 150.0f

    sub-float/2addr v3, v4

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v5

    const/high16 v6, 0x43160000    # 150.0f

    add-float/2addr v5, v6

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    sub-float/2addr v4, v5

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v5

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v3

    const/high16 v4, 0x43160000    # 150.0f

    sub-float/2addr v3, v4

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v4

    const/high16 v5, 0x40400000    # 3.0f

    sub-float/2addr v4, v5

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v5

    const/high16 v6, 0x43160000    # 150.0f

    sub-float/2addr v5, v6

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v6

    const/high16 v7, 0x40400000    # 3.0f

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v3

    const/high16 v4, 0x43160000    # 150.0f

    add-float/2addr v3, v4

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v4

    const/high16 v5, 0x40400000    # 3.0f

    sub-float/2addr v4, v5

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v5

    const/high16 v6, 0x43160000    # 150.0f

    add-float/2addr v5, v6

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v6

    const/high16 v7, 0x40400000    # 3.0f

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz v21, :cond_d

    invoke-virtual/range {v21 .. v21}, Lcom/adasplus/data/LdwInfo;->getLeft()Lcom/adasplus/data/LaneInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adasplus/data/LaneInfo;->getIsCredible()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    invoke-virtual/range {v21 .. v21}, Lcom/adasplus/data/LdwInfo;->getRight()Lcom/adasplus/data/LaneInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adasplus/data/LaneInfo;->getIsCredible()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    :cond_5
    invoke-virtual/range {v21 .. v21}, Lcom/adasplus/data/LdwInfo;->getLeft()Lcom/adasplus/data/LaneInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adasplus/data/LaneInfo;->getPoints()[Landroid/graphics/Point;

    move-result-object v30

    invoke-virtual/range {v21 .. v21}, Lcom/adasplus/data/LdwInfo;->getRight()Lcom/adasplus/data/LaneInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adasplus/data/LaneInfo;->getPoints()[Landroid/graphics/Point;

    move-result-object v31

    const/4 v3, 0x0

    aget-object v3, v30, v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    aget-object v4, v31, v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-ge v3, v4, :cond_11

    const/4 v3, 0x0

    aget-object v3, v30, v3

    iget v0, v3, Landroid/graphics/Point;->y:I

    move/from16 v43, v0

    :goto_1
    const/4 v3, 0x1

    aget-object v3, v30, v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    aget-object v4, v31, v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_12

    const/4 v3, 0x1

    aget-object v3, v30, v3

    iget v0, v3, Landroid/graphics/Point;->y:I

    move/from16 v41, v0

    :goto_2
    sub-int v42, v41, v43

    const/16 v27, 0x0

    const/4 v3, 0x1

    aget-object v3, v30, v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    const/4 v4, 0x0

    aget-object v4, v30, v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    aget-object v3, v30, v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    const/4 v4, 0x0

    aget-object v4, v30, v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    const/4 v4, 0x0

    aget-object v4, v30, v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    const/4 v5, 0x1

    aget-object v5, v30, v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    aget-object v4, v30, v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    const/4 v5, 0x0

    aget-object v5, v30, v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    div-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v27, v0

    :cond_6
    const/high16 v26, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    aget-object v3, v30, v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    aget-object v3, v30, v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float v3, v3, v27

    const/4 v4, 0x0

    aget-object v4, v30, v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float v26, v3, v4

    :cond_7
    const/4 v3, 0x1

    aget-object v3, v30, v3

    iget v0, v3, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    const/4 v3, 0x0

    cmpl-float v3, v26, v3

    if-eqz v3, :cond_8

    move/from16 v0, v43

    int-to-float v3, v0

    sub-float v3, v3, v27

    div-float v3, v3, v26

    float-to-int v0, v3

    move/from16 v28, v0

    :cond_8
    const/16 v36, 0x0

    const/4 v3, 0x1

    aget-object v3, v31, v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    const/4 v4, 0x0

    aget-object v4, v31, v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    aget-object v3, v31, v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    const/4 v4, 0x0

    aget-object v4, v31, v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    const/4 v4, 0x0

    aget-object v4, v31, v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    const/4 v5, 0x1

    aget-object v5, v31, v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    aget-object v4, v31, v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    const/4 v5, 0x0

    aget-object v5, v31, v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    div-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v36, v0

    :cond_9
    const/high16 v35, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    aget-object v3, v31, v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    aget-object v3, v31, v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    sub-float v3, v3, v36

    const/4 v4, 0x0

    aget-object v4, v31, v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float v35, v3, v4

    :cond_a
    const/4 v3, 0x1

    aget-object v3, v31, v3

    iget v0, v3, Landroid/graphics/Point;->x:I

    move/from16 v37, v0

    const/4 v3, 0x0

    cmpl-float v3, v35, v3

    if-eqz v3, :cond_b

    move/from16 v0, v43

    int-to-float v3, v0

    sub-float v3, v3, v36

    div-float v3, v3, v35

    float-to-int v0, v3

    move/from16 v37, v0

    :cond_b
    const/4 v3, 0x1

    aget-object v3, v30, v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/dvr/ADAS/SVDraw;->OffsetX:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintX:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v22, v0

    const/4 v3, 0x1

    aget-object v3, v30, v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/dvr/ADAS/SVDraw;->OffsetY:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintY:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/car/dvr/ADAS/SVDraw;->OffsetX:I

    add-int v3, v3, v28

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintX:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/car/dvr/ADAS/SVDraw;->OffsetY:I

    add-int v3, v3, v43

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintY:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v25, v0

    const/4 v3, 0x1

    aget-object v3, v31, v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/dvr/ADAS/SVDraw;->OffsetX:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintX:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v32, v0

    const/4 v3, 0x1

    aget-object v3, v31, v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/dvr/ADAS/SVDraw;->OffsetY:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintY:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/car/dvr/ADAS/SVDraw;->OffsetX:I

    add-int v3, v3, v37

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintX:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v34, v0

    invoke-virtual/range {v21 .. v21}, Lcom/adasplus/data/LdwInfo;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_c

    invoke-virtual/range {v21 .. v21}, Lcom/adasplus/data/LdwInfo;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_13

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v45, v0

    new-instance v3, Landroid/graphics/LinearGradient;

    move/from16 v0, v22

    int-to-float v4, v0

    move/from16 v0, v23

    int-to-float v5, v0

    move/from16 v0, v22

    int-to-float v6, v0

    move/from16 v0, v25

    int-to-float v7, v0

    const-string v8, "#FF041B"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_3
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPath:Landroid/graphics/Path;

    move/from16 v0, v22

    int-to-float v4, v0

    move/from16 v0, v23

    int-to-float v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPath:Landroid/graphics/Path;

    move/from16 v0, v24

    int-to-float v4, v0

    move/from16 v0, v25

    int-to-float v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPath:Landroid/graphics/Path;

    move/from16 v0, v34

    int-to-float v4, v0

    move/from16 v0, v25

    int-to-float v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPath:Landroid/graphics/Path;

    move/from16 v0, v32

    int-to-float v4, v0

    move/from16 v0, v33

    int-to-float v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual/range {v21 .. v21}, Lcom/adasplus/data/LdwInfo;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    const v4, -0x94bfc

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v45, v0

    new-instance v3, Landroid/graphics/LinearGradient;

    move/from16 v0, v22

    int-to-float v4, v0

    move/from16 v0, v23

    int-to-float v5, v0

    move/from16 v0, v22

    int-to-float v6, v0

    move/from16 v0, v25

    int-to-float v7, v0

    const-string v8, "#FF041B"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_4
    move/from16 v0, v24

    int-to-float v3, v0

    move/from16 v0, v25

    int-to-float v4, v0

    move/from16 v0, v22

    int-to-float v5, v0

    move/from16 v0, v23

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {v21 .. v21}, Lcom/adasplus/data/LdwInfo;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    const v4, -0x94bfc

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v45, v0

    new-instance v3, Landroid/graphics/LinearGradient;

    move/from16 v0, v32

    int-to-float v4, v0

    move/from16 v0, v33

    int-to-float v5, v0

    move/from16 v0, v32

    int-to-float v6, v0

    move/from16 v0, v25

    int-to-float v7, v0

    const-string v8, "#FF041B"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_5
    move/from16 v0, v34

    int-to-float v3, v0

    move/from16 v0, v25

    int-to-float v4, v0

    move/from16 v0, v32

    int-to-float v5, v0

    move/from16 v0, v33

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual/range {v21 .. v21}, Lcom/adasplus/data/LdwInfo;->getLeft()Lcom/adasplus/data/LaneInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adasplus/data/LaneInfo;->getIsCredible()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    invoke-virtual/range {v21 .. v21}, Lcom/adasplus/data/LdwInfo;->getRight()Lcom/adasplus/data/LaneInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adasplus/data/LaneInfo;->getIsCredible()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mLdwCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mLdwCount:I

    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v18, :cond_1b

    invoke-virtual/range {v18 .. v18}, Lcom/adasplus/data/FcwInfo;->getState()I

    move-result v15

    const/16 v20, 0x0

    :goto_7
    invoke-virtual/range {v18 .. v18}, Lcom/adasplus/data/FcwInfo;->getCarNum()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->p_text:Landroid/graphics/Paint;

    const-string v4, "#05E2FF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {v18 .. v18}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v3

    aget-object v3, v3, v20

    invoke-virtual {v3}, Lcom/adasplus/data/CarInfo;->getDis()F

    move-result v3

    float-to-int v0, v3

    move/from16 v16, v0

    invoke-virtual/range {v18 .. v18}, Lcom/adasplus/data/FcwInfo;->getCar()[Lcom/adasplus/data/CarInfo;

    move-result-object v3

    aget-object v3, v3, v20

    invoke-virtual {v3}, Lcom/adasplus/data/CarInfo;->getCarRect()Lcom/adasplus/data/RectInt;

    move-result-object v14

    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getY()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/dvr/ADAS/SVDraw;->OffsetY:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintY:F

    mul-float/2addr v3, v4

    float-to-double v4, v3

    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintX:F

    mul-float/2addr v3, v6

    float-to-double v6, v3

    const-wide v8, 0x3fb47ae147ae147bL    # 0.08

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v14, v3}, Lcom/adasplus/data/RectInt;->setY(I)V

    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getX()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/dvr/ADAS/SVDraw;->OffsetX:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintX:F

    mul-float/2addr v3, v4

    float-to-double v4, v3

    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getH()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintY:F

    mul-float/2addr v3, v6

    float-to-double v6, v3

    const-wide v8, 0x3fb47ae147ae147bL    # 0.08

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v14, v3}, Lcom/adasplus/data/RectInt;->setX(I)V

    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintX:F

    mul-float/2addr v3, v4

    float-to-double v4, v3

    const-wide v6, 0x3ff28f5c28f5c28fL    # 1.16

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v14, v3}, Lcom/adasplus/data/RectInt;->setW(I)V

    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getH()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintY:F

    mul-float/2addr v3, v4

    float-to-double v4, v3

    const-wide v6, 0x3ff28f5c28f5c28fL    # 1.16

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-virtual {v14, v3}, Lcom/adasplus/data/RectInt;->setH(I)V

    if-eqz v15, :cond_e

    if-nez v20, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->p_text:Landroid/graphics/Paint;

    const-string v4, "#FF041B"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_e
    if-eqz v15, :cond_19

    if-nez v20, :cond_19

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/car/dvr/ADAS/SVDraw;->getCarBitmap(Lcom/adasplus/data/RectInt;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    if-eqz v12, :cond_f

    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getY()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/dvr/ADAS/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v12, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_f
    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getIsCalibCredible()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    if-lez v16, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->p_text:Landroid/graphics/Paint;

    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->p_text:Landroid/graphics/Paint;

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v39

    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v39, v3

    if-gtz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mTextRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getX()I

    move-result v4

    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getY()I

    move-result v5

    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    sub-int/2addr v5, v6

    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getX()I

    move-result v6

    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getY()I

    move-result v7

    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v8

    div-int/lit8 v8, v8, 0xa

    sub-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->p_text:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v40, v0

    move-object/from16 v0, v19

    iget v13, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mTextRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v40, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v13, v4

    sub-float/2addr v3, v4

    float-to-int v11, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mTextRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    add-int/lit8 v4, v11, -0x5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/dvr/ADAS/SVDraw;->p_text:Landroid/graphics/Paint;

    move-object/from16 v0, v38

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_10
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_7

    :cond_11
    const/4 v3, 0x0

    aget-object v3, v31, v3

    iget v0, v3, Landroid/graphics/Point;->y:I

    move/from16 v43, v0

    goto/16 :goto_1

    :cond_12
    const/4 v3, 0x1

    aget-object v3, v31, v3

    iget v0, v3, Landroid/graphics/Point;->y:I

    move/from16 v41, v0

    goto/16 :goto_2

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v45, v0

    new-instance v3, Landroid/graphics/LinearGradient;

    move/from16 v0, v22

    int-to-float v4, v0

    move/from16 v0, v23

    int-to-float v5, v0

    move/from16 v0, v22

    int-to-float v6, v0

    move/from16 v0, v25

    int-to-float v7, v0

    const-string v8, "#05E2FF"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v45, v0

    new-instance v3, Landroid/graphics/LinearGradient;

    move/from16 v0, v22

    int-to-float v4, v0

    move/from16 v0, v23

    int-to-float v5, v0

    move/from16 v0, v22

    int-to-float v6, v0

    move/from16 v0, v25

    int-to-float v7, v0

    const/4 v8, -0x1

    const v9, 0xffffff

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_4

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v45, v0

    new-instance v3, Landroid/graphics/LinearGradient;

    move/from16 v0, v32

    int-to-float v4, v0

    move/from16 v0, v33

    int-to-float v5, v0

    move/from16 v0, v32

    int-to-float v6, v0

    move/from16 v0, v25

    int-to-float v7, v0

    const/4 v8, -0x1

    const v9, 0xffffff

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_5

    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mLdwCount:I

    const/16 v4, 0x96

    if-lt v3, v4, :cond_17

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getIsCalibCredible()I

    move-result v3

    if-nez v3, :cond_d

    :cond_17
    move-object/from16 v0, p0

    iget v3, v0, Lcom/car/dvr/ADAS/SVDraw;->sBakConfigX:F

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_18

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/car/dvr/ADAS/SVDraw;->sBakConfigX:F

    const-string v3, "DVR.ADAS.SVDraw"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawResult: sConfigX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/car/dvr/ADAS/SVDraw;->sConfigX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sConfigY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/car/dvr/ADAS/SVDraw;->sConfigY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", config.getX()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", config.getY()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", maxLeft="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/car/dvr/ADAS/SVDraw;->maxLeft:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/dvr/ADAS/SVDraw;->mLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/dvr/ADAS/SVDraw;->mLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/dvr/ADAS/SVDraw;->mLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x6

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/dvr/ADAS/SVDraw;->mLine:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->src:[F

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/car/dvr/ADAS/SVDraw;->OffX:F

    const/high16 v7, 0x41a00000    # 20.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/high16 v6, 0x41a00000    # 20.0f

    sub-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/car/dvr/ADAS/SVDraw;->OffY:F

    const/high16 v7, 0x41900000    # 18.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/car/dvr/ADAS/SVDraw;->OffX:F

    const/high16 v7, 0x41a00000    # 20.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/car/dvr/ADAS/SVDraw;->OffY:F

    const/high16 v7, 0x41900000    # 18.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/car/dvr/ADAS/SVDraw;->OffX:F

    const/high16 v7, 0x40a00000    # 5.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x5

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/car/dvr/ADAS/SVDraw;->OffY:F

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x6

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/car/dvr/ADAS/SVDraw;->OffX:F

    const/high16 v7, 0x40a00000    # 5.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/high16 v6, 0x42480000    # 50.0f

    sub-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x7

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/car/dvr/ADAS/SVDraw;->OffY:F

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->dst:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPocilyMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/ADAS/SVDraw;->src:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/car/dvr/ADAS/SVDraw;->dst:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/SVDraw;->src:[F

    array-length v8, v8

    shr-int/lit8 v8, v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mLine:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/ADAS/SVDraw;->mPocilyMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/car/dvr/ADAS/SVDraw;->OffX:F

    const/high16 v7, 0x41700000    # 15.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/car/dvr/ADAS/SVDraw;->OffY:F

    const/high16 v7, 0x41900000    # 18.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/car/dvr/ADAS/SVDraw;->OffX:F

    const/high16 v7, 0x41700000    # 15.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    const/high16 v6, 0x41a00000    # 20.0f

    add-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/car/dvr/ADAS/SVDraw;->OffY:F

    const/high16 v7, 0x41900000    # 18.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/car/dvr/ADAS/SVDraw;->OffX:F

    const/high16 v7, 0x40900000    # 4.5f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    const/high16 v6, 0x42480000    # 50.0f

    add-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x5

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/car/dvr/ADAS/SVDraw;->OffY:F

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x6

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getX()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/car/dvr/ADAS/SVDraw;->OffX:F

    const/high16 v7, 0x40900000    # 4.5f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x7

    invoke-virtual/range {v17 .. v17}, Lcom/adasplus/data/AdasConfig;->getY()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/car/dvr/ADAS/SVDraw;->OffY:F

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->dst:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPocilyMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/ADAS/SVDraw;->src:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/car/dvr/ADAS/SVDraw;->dst:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/SVDraw;->src:[F

    array-length v8, v8

    shr-int/lit8 v8, v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mLine:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/dvr/ADAS/SVDraw;->mPocilyMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_6

    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_8

    :cond_1a
    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getX()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v39, v4

    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mTextRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/car/dvr/ADAS/SVDraw;->OffsetX:I

    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getY()I

    move-result v5

    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v6

    div-int/lit8 v6, v6, 0xa

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/car/dvr/ADAS/SVDraw;->OffsetX:I

    int-to-float v6, v6

    add-float v6, v6, v39

    float-to-int v6, v6

    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getY()I

    move-result v7

    invoke-virtual {v14}, Lcom/adasplus/data/RectInt;->getW()I

    move-result v8

    div-int/lit8 v8, v8, 0xa

    sub-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_9

    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/SVDraw;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_1c
    monitor-exit v44
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 3

    iget-object v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mHandler:Landroid/os/Handler;

    monitor-exit v2

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getHandlerNoWait()Landroid/os/Handler;
    .locals 2

    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mHandler:Landroid/os/Handler;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastMotionEvent()Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mLastMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public isCalibration()Z
    .locals 1

    iget-boolean v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mDrawAdasCalibration:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/car/dvr/ADAS/SVDraw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adas_calibration"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/car/dvr/ADAS/SVDraw;->mADASContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/car/dvr/ADAS/SVDraw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mADASContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/car/dvr/ADAS/SVDraw;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :pswitch_0
    iput-boolean v5, p0, Lcom/car/dvr/ADAS/SVDraw;->mTouchDownNow:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnLeft:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnRight:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_3

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnTop:I

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnBottom:I

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_3

    sget-boolean v2, Lcom/car/dvr/ADAS/SVDraw;->mIsDraw:Z

    if-nez v2, :cond_2

    sput-boolean v5, Lcom/car/dvr/ADAS/SVDraw;->mIsDraw:Z

    iget-object v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/car/dvr/ADAS/SVDraw$3;

    invoke-direct {v3, p0}, Lcom/car/dvr/ADAS/SVDraw$3;-><init>(Lcom/car/dvr/ADAS/SVDraw;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_1
    const-string v2, "DVR.ADAS.SVDraw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Down isLand = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/car/dvr/ADAS/SVDraw;->isLand:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isPort = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/car/dvr/ADAS/SVDraw;->isPort:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mStartX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/car/dvr/ADAS/SVDraw;->mStartX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mStartY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/car/dvr/ADAS/SVDraw;->mStartY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDrawAdasCalibration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/car/dvr/ADAS/SVDraw;->mDrawAdasCalibration:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    sput-boolean v6, Lcom/car/dvr/ADAS/SVDraw;->mIsDraw:Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mStartY:F

    iget-object v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mLandRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mLandRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/car/dvr/ADAS/SVDraw;->mStartX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/car/dvr/ADAS/SVDraw;->mStartY:F

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-boolean v5, p0, Lcom/car/dvr/ADAS/SVDraw;->isLand:Z

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mPortRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mPortRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/car/dvr/ADAS/SVDraw;->mStartX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/car/dvr/ADAS/SVDraw;->mStartY:F

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v5, p0, Lcom/car/dvr/ADAS/SVDraw;->isPort:Z

    goto/16 :goto_1

    :pswitch_1
    sget-boolean v2, Lcom/car/dvr/ADAS/SVDraw;->mIsDraw:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/car/dvr/ADAS/SVDraw;->isLand:Z

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/car/dvr/ADAS/SVDraw;->maxBottom:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->maxBottom:F

    iput v2, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigY:F

    :cond_5
    :goto_2
    const-string v2, "DVR.ADAS.SVDraw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Move sConfigX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sConfigY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/car/dvr/ADAS/SVDraw;->maxTop:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_7

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->maxTop:F

    iput v2, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigY:F

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigY:F

    goto :goto_2

    :cond_8
    iget-boolean v2, p0, Lcom/car/dvr/ADAS/SVDraw;->isPort:Z

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/car/dvr/ADAS/SVDraw;->maxRight:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_9

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->maxRight:F

    iput v2, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigX:F

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/car/dvr/ADAS/SVDraw;->maxLeft:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_a

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->maxLeft:F

    iput v2, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigX:F

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigX:F

    goto :goto_2

    :pswitch_2
    iput-boolean v6, p0, Lcom/car/dvr/ADAS/SVDraw;->mTouchDownNow:Z

    iget-object v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mListener:Lcom/car/dvr/ADAS/ADAS$IAdasConfigListener;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mListener:Lcom/car/dvr/ADAS/ADAS$IAdasConfigListener;

    iget v3, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigX:F

    iget v4, p0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintX:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/car/dvr/ADAS/SVDraw;->OffsetX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigY:F

    iget v5, p0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintY:F

    div-float/2addr v4, v5

    iget v5, p0, Lcom/car/dvr/ADAS/SVDraw;->OffsetY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-interface {v2, v3, v4}, Lcom/car/dvr/ADAS/ADAS$IAdasConfigListener;->setConfigXY(FF)V

    :cond_b
    iput-boolean v6, p0, Lcom/car/dvr/ADAS/SVDraw;->isPort:Z

    iput-boolean v6, p0, Lcom/car/dvr/ADAS/SVDraw;->isLand:Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBtnTop(I)V
    .locals 2

    iput p1, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnTop:I

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnTop:I

    iget v1, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenHeight:I

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnBottom:I

    return-void
.end method

.method public setListener(Lcom/car/dvr/ADAS/ADAS$IAdasConfigListener;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/SVDraw;->mListener:Lcom/car/dvr/ADAS/ADAS$IAdasConfigListener;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    iput p3, p0, Lcom/car/dvr/ADAS/SVDraw;->mWidth:I

    iput p4, p0, Lcom/car/dvr/ADAS/SVDraw;->mHeight:I

    iput p3, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenWidth:I

    iput p4, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenHeight:I

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x44480000    # 800.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintX:F

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x43e10000    # 450.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintY:F

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenHeight:I

    div-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnLeft:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnTop:I

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenHeight:I

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnRight:I

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenHeight:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnBottom:I

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenWidth:I

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->maxLeft:F

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenHeight:I

    div-int/lit8 v1, v1, 0x8

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->maxTop:F

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenWidth:I

    iget v1, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenWidth:I

    div-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->maxRight:F

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenHeight:I

    div-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->maxBottom:F

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->OffsetX:I

    add-int/lit16 v0, v0, 0x280

    int-to-float v0, v0

    iget v1, p0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintX:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->OffX:F

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->OffsetY:I

    add-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    iget v1, p0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintY:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->OffY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mSurfaceChanged:Z

    const-string v0, "DVR.ADAS.SVDraw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", TaupaintX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sConfigX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sConfigY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/car/dvr/ADAS/SVDraw;->sConfigY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/car/dvr/ADAS/SVDraw;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-virtual {p0, v2}, Lcom/car/dvr/ADAS/SVDraw;->setZOrderOnTop(Z)V

    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintX:F

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x43e10000    # 450.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->TaupaintY:F

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->xCenter:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->p_text:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->p_text:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->p_text:Landroid/graphics/Paint;

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->p_text:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->p_text:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mTextRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mLandRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mPortRect:Landroid/graphics/Rect;

    iput v3, p0, Lcom/car/dvr/ADAS/SVDraw;->mLdwCount:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mPocilyMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mLine:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/car/dvr/ADAS/SVDraw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020045

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mLine:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBlueCarBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/car/dvr/ADAS/SVDraw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBlueCarBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mRedCarBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/car/dvr/ADAS/SVDraw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020061

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mRedCarBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenHeight:I

    div-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnLeft:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnTop:I

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenHeight:I

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnRight:I

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenHeight:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBtnBottom:I

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenWidth:I

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->maxLeft:F

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenHeight:I

    div-int/lit8 v1, v1, 0x8

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->maxTop:F

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenWidth:I

    iget v1, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenWidth:I

    div-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->maxRight:F

    iget v0, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/car/dvr/ADAS/SVDraw;->sScreenHeight:I

    div-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/car/dvr/ADAS/SVDraw;->maxBottom:F

    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mIsDestoryed:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/car/dvr/ADAS/SVDraw;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mIsDestoryed:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mLine:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mLine:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mLine:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mLine:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBlueCarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBlueCarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mBlueCarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mBlueCarBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mRedCarBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mRedCarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/car/dvr/ADAS/SVDraw;->mRedCarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/car/dvr/ADAS/SVDraw;->mRedCarBitmap:Landroid/graphics/Bitmap;

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
