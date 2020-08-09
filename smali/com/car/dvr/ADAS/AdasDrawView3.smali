.class public Lcom/car/dvr/ADAS/AdasDrawView3;
.super Lcom/calmcar/adas/apiserver/view/AdasDrawView;
.source "AdasDrawView3.java"


# instance fields
.field curHeight:D

.field curWidth:D

.field private mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field mScaleHeight:F

.field mScaleWidth:F

.field private mShader:Landroid/graphics/Shader;

.field matDrawProcessManager:Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;

.field private path5:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/car/dvr/ADAS/AdasDrawView3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/car/dvr/ADAS/AdasDrawView3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/calmcar/adas/apiserver/view/AdasDrawView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/car/dvr/ADAS/AdasDrawView3;->setOpaque(Z)V

    invoke-virtual {p0, p0}, Lcom/car/dvr/ADAS/AdasDrawView3;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private PaintCar(Landroid/graphics/Canvas;Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->getShowType()I

    move-result v5

    if-ne v5, v7, :cond_0

    const/4 v4, 0x0

    :goto_0
    iget-object v6, p2, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    iget-object v6, p2, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/apiserver/model/AdasRect;

    invoke-virtual {p0, p1, v0}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawRectCarGreen(Landroid/graphics/Canvas;Lcom/calmcar/adas/apiserver/model/AdasRect;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->getFrontCarInfo()Lcom/calmcar/adas/apiserver/model/FrontCarInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getCarRect()Lcom/calmcar/adas/apiserver/model/AdasRect;

    move-result-object v1

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getFrontCarStateType()I

    move-result v3

    if-ne v3, v7, :cond_2

    invoke-virtual {p0, p1, v1}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawRectCarOrange(Landroid/graphics/Canvas;Lcom/calmcar/adas/apiserver/model/AdasRect;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v6, 0x2

    if-ne v3, v6, :cond_3

    invoke-virtual {p0, p1, v1}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawRectCarRed(Landroid/graphics/Canvas;Lcom/calmcar/adas/apiserver/model/AdasRect;)V

    goto :goto_1

    :cond_3
    const/4 v6, 0x3

    if-ne v3, v6, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawRectCarBlue(Landroid/graphics/Canvas;Lcom/calmcar/adas/apiserver/model/AdasRect;)V

    goto :goto_1
.end method

.method private PaintLine(Landroid/graphics/Canvas;Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;)V
    .locals 2

    iget-object v0, p2, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getLdwType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0, p1, v0}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLaneDefault(Landroid/graphics/Canvas;[Lcom/calmcar/adas/apiserver/model/AdasPoint;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, v0}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLaneNormal(Landroid/graphics/Canvas;[Lcom/calmcar/adas/apiserver/model/AdasPoint;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getShowType()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLaneLeft(Landroid/graphics/Canvas;[Lcom/calmcar/adas/apiserver/model/AdasPoint;I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getShowType()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLaneRight(Landroid/graphics/Canvas;[Lcom/calmcar/adas/apiserver/model/AdasPoint;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/car/dvr/ADAS/AdasDrawView3;->setOpaque(Z)V

    invoke-virtual {p0, p0}, Lcom/car/dvr/ADAS/AdasDrawView3;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public cvX(D)F
    .locals 3

    iget v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mScaleWidth:F

    float-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-float v0, v0

    return v0
.end method

.method public cvY(D)F
    .locals 3

    iget v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mScaleHeight:F

    float-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-float v0, v0

    return v0
.end method

.method public drawBitmap(Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;)V
    .locals 3

    invoke-virtual {p0}, Lcom/car/dvr/ADAS/AdasDrawView3;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawVanishPointCenter(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/car/dvr/ADAS/AdasDrawView3;->PaintLine(Landroid/graphics/Canvas;Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, v0, p2}, Lcom/car/dvr/ADAS/AdasDrawView3;->PaintCar(Landroid/graphics/Canvas;Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/car/dvr/ADAS/AdasDrawView3;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawDefaultLaneRect(Landroid/graphics/Canvas;)V
    .locals 58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/graphics/Paint;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v54, v0

    const/high16 v55, 0x3f800000    # 1.0f

    invoke-virtual/range {v54 .. v55}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v54, v0

    const/16 v55, -0x1

    invoke-virtual/range {v54 .. v55}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v54, v0

    sget-object v55, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v54 .. v55}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-wide v54, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    move-wide/from16 v0, v54

    double-to-float v0, v0

    move/from16 v52, v0

    sget-wide v54, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y:D

    move-wide/from16 v0, v54

    double-to-float v0, v0

    move/from16 v53, v0

    const/high16 v54, 0x41c80000    # 25.0f

    sub-float v4, v52, v54

    const/high16 v54, 0x41f00000    # 30.0f

    add-float v28, v53, v54

    const/high16 v54, 0x41700000    # 15.0f

    sub-float v5, v4, v54

    move/from16 v29, v28

    const/high16 v54, 0x41c80000    # 25.0f

    sub-float v6, v5, v54

    const/high16 v54, 0x41a00000    # 20.0f

    add-float v30, v28, v54

    const/high16 v54, 0x41c80000    # 25.0f

    sub-float v7, v4, v54

    move/from16 v31, v30

    new-instance v54, Landroid/graphics/Path;

    invoke-direct/range {v54 .. v54}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v54

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    float-to-double v0, v4

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    float-to-double v0, v5

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    float-to-double v0, v6

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    float-to-double v0, v7

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v54, 0x41480000    # 12.5f

    sub-float v8, v7, v54

    const/high16 v54, 0x41200000    # 10.0f

    add-float v32, v31, v54

    const/high16 v54, 0x41700000    # 15.0f

    sub-float v9, v8, v54

    move/from16 v33, v32

    const/high16 v54, 0x42480000    # 50.0f

    sub-float v10, v9, v54

    const/high16 v54, 0x42200000    # 40.0f

    add-float v34, v33, v54

    const/high16 v54, 0x42480000    # 50.0f

    sub-float v11, v8, v54

    move/from16 v35, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    float-to-double v0, v8

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    float-to-double v0, v9

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    float-to-double v0, v10

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    float-to-double v0, v11

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v54, 0x41480000    # 12.5f

    sub-float v12, v11, v54

    const/high16 v54, 0x41200000    # 10.0f

    add-float v36, v35, v54

    const/high16 v54, 0x41700000    # 15.0f

    sub-float v13, v12, v54

    move/from16 v37, v36

    const/high16 v54, 0x42960000    # 75.0f

    sub-float v14, v13, v54

    const/high16 v54, 0x42700000    # 60.0f

    add-float v38, v37, v54

    const/high16 v54, 0x42960000    # 75.0f

    sub-float v15, v12, v54

    move/from16 v39, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    float-to-double v0, v12

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    float-to-double v0, v13

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v37

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    float-to-double v0, v14

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    float-to-double v0, v15

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v39

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v54, 0x41c80000    # 25.0f

    add-float v24, v52, v54

    const/high16 v54, 0x41f00000    # 30.0f

    add-float v48, v53, v54

    const/high16 v54, 0x41700000    # 15.0f

    add-float v25, v24, v54

    move/from16 v49, v48

    const/high16 v54, 0x41c80000    # 25.0f

    add-float v26, v25, v54

    const/high16 v54, 0x41a00000    # 20.0f

    add-float v50, v49, v54

    const/high16 v54, 0x41c80000    # 25.0f

    add-float v27, v24, v54

    move/from16 v51, v50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v49

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v50

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v51

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v54, 0x41480000    # 12.5f

    add-float v20, v27, v54

    const/high16 v54, 0x41200000    # 10.0f

    add-float v44, v51, v54

    const/high16 v54, 0x41700000    # 15.0f

    add-float v21, v20, v54

    move/from16 v45, v44

    const/high16 v54, 0x42480000    # 50.0f

    add-float v22, v21, v54

    const/high16 v54, 0x42200000    # 40.0f

    add-float v46, v45, v54

    const/high16 v54, 0x42480000    # 50.0f

    add-float v23, v20, v54

    move/from16 v47, v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v45

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v54, 0x41480000    # 12.5f

    add-float v16, v23, v54

    const/high16 v54, 0x41200000    # 10.0f

    add-float v40, v47, v54

    const/high16 v54, 0x41700000    # 15.0f

    add-float v17, v16, v54

    move/from16 v41, v40

    const/high16 v54, 0x42960000    # 75.0f

    add-float v18, v17, v54

    const/high16 v54, 0x42700000    # 60.0f

    add-float v42, v41, v54

    const/high16 v54, 0x42960000    # 75.0f

    add-float v19, v16, v54

    move/from16 v43, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v40

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v42

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v55

    move/from16 v0, v43

    float-to-double v0, v0

    move-wide/from16 v56, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v56

    invoke-virtual {v0, v1, v2}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v56

    invoke-virtual/range {v54 .. v56}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v55, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawLaneDefault(Landroid/graphics/Canvas;[Lcom/calmcar/adas/apiserver/model/AdasPoint;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawDefaultLaneRect(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawLaneLeft(Landroid/graphics/Canvas;[Lcom/calmcar/adas/apiserver/model/AdasPoint;I)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v10, Lorg/opencv/core/Point;

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    invoke-direct {v10, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    neg-double v2, v2

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double v14, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    add-double/2addr v2, v14

    double-to-float v6, v2

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    sub-double/2addr v2, v14

    double-to-float v4, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v11, Lorg/opencv/core/Point;

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    const/4 v6, 0x1

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v11, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v12, Lorg/opencv/core/Point;

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x4

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v12, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v2, v11, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v14

    double-to-float v6, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v2, v12, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v2, v14

    double-to-float v4, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->x:D

    double-to-float v6, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v11, Lorg/opencv/core/Point;

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x2

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    const/4 v6, 0x2

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v11, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v12, Lorg/opencv/core/Point;

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x4

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x3

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    const/4 v6, 0x4

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v12, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v2, v11, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v14

    double-to-float v6, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v2, v12, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v2, v14

    double-to-float v4, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->x:D

    double-to-float v6, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x2

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x2

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v5

    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0xc8

    const/16 v13, 0xff

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v9, v13, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x32

    const/16 v13, 0xff

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v9, v13, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mShader:Landroid/graphics/Shader;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x2

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x2

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x3

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x4

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x4

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x5

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v10, Lorg/opencv/core/Point;

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    invoke-direct {v10, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    neg-double v2, v2

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double v14, v2, v4

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    add-double/2addr v2, v14

    double-to-float v6, v2

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    sub-double/2addr v2, v14

    double-to-float v4, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v11, Lorg/opencv/core/Point;

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    const/4 v6, 0x1

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v11, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v12, Lorg/opencv/core/Point;

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x4

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v12, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v2, v11, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v14

    double-to-float v6, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v2, v12, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v2, v14

    double-to-float v4, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->x:D

    double-to-float v6, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v11, Lorg/opencv/core/Point;

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x2

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    const/4 v6, 0x2

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v11, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v12, Lorg/opencv/core/Point;

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x4

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x3

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    const/4 v6, 0x4

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v12, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v2, v11, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v14

    double-to-float v6, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v2, v12, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v2, v14

    double-to-float v4, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->x:D

    double-to-float v6, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x2

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x2

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v5

    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0xc8

    const/4 v13, 0x0

    const/16 v16, 0xdf

    const/16 v17, 0xfc

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v9, v13, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x32

    const/4 v13, 0x0

    const/16 v16, 0xdf

    const/16 v17, 0xfc

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v9, v13, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mShader:Landroid/graphics/Shader;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x2

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x2

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x3

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x4

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x4

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x5

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public drawLaneNormal(Landroid/graphics/Canvas;[Lcom/calmcar/adas/apiserver/model/AdasPoint;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v10, Lorg/opencv/core/Point;

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    invoke-direct {v10, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    neg-double v2, v2

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double v14, v2, v4

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    add-double/2addr v2, v14

    double-to-float v6, v2

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    sub-double/2addr v2, v14

    double-to-float v4, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v11, Lorg/opencv/core/Point;

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    const/4 v6, 0x1

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v11, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v12, Lorg/opencv/core/Point;

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x4

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v12, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v2, v11, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v14

    double-to-float v6, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v2, v12, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v2, v14

    double-to-float v4, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->x:D

    double-to-float v6, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v11, Lorg/opencv/core/Point;

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x2

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    const/4 v6, 0x2

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v11, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v12, Lorg/opencv/core/Point;

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x4

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x3

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    const/4 v6, 0x4

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v12, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v2, v11, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v14

    double-to-float v6, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v2, v12, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v2, v14

    double-to-float v4, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->x:D

    double-to-float v6, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x2

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x2

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v5

    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0xc8

    const/4 v13, 0x0

    const/16 v16, 0xdf

    const/16 v17, 0xfc

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v9, v13, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x32

    const/4 v13, 0x0

    const/16 v16, 0xdf

    const/16 v17, 0xfc

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v9, v13, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mShader:Landroid/graphics/Shader;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x2

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x2

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x3

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x4

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x4

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x5

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawLaneRight(Landroid/graphics/Canvas;[Lcom/calmcar/adas/apiserver/model/AdasPoint;I)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v10, Lorg/opencv/core/Point;

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    invoke-direct {v10, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    neg-double v2, v2

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double v14, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    add-double/2addr v2, v14

    double-to-float v6, v2

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    sub-double/2addr v2, v14

    double-to-float v4, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v11, Lorg/opencv/core/Point;

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    const/4 v6, 0x1

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v11, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v12, Lorg/opencv/core/Point;

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x4

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v12, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v2, v11, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v14

    double-to-float v6, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    sub-double/2addr v2, v14

    double-to-float v4, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v11, Lorg/opencv/core/Point;

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x2

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    const/4 v6, 0x2

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v11, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v12, Lorg/opencv/core/Point;

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x4

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x3

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    const/4 v6, 0x4

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v12, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v2, v11, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v14

    double-to-float v6, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v2, v12, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v2, v14

    double-to-float v4, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->x:D

    double-to-float v6, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x2

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x2

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v5

    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0xc8

    const/16 v13, 0xff

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v9, v13, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x32

    const/16 v13, 0xff

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v9, v13, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mShader:Landroid/graphics/Shader;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x2

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x2

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x3

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x4

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x4

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x5

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v10, Lorg/opencv/core/Point;

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    invoke-direct {v10, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    neg-double v2, v2

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double v14, v2, v4

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    add-double/2addr v2, v14

    double-to-float v6, v2

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    sub-double/2addr v2, v14

    double-to-float v4, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v11, Lorg/opencv/core/Point;

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    const/4 v6, 0x1

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v11, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v12, Lorg/opencv/core/Point;

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x4

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v12, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v2, v11, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v14

    double-to-float v6, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v2, v12, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v2, v14

    double-to-float v4, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->x:D

    double-to-float v6, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v11, Lorg/opencv/core/Point;

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x2

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    const/4 v6, 0x2

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v11, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v12, Lorg/opencv/core/Point;

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    const/4 v4, 0x4

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v4, 0x3

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->y:D

    const/4 v6, 0x4

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v12, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v2, v11, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v14

    double-to-float v6, v2

    iget-wide v2, v11, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v2, v12, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v2, v14

    double-to-float v4, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->x:D

    double-to-float v6, v2

    iget-wide v2, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x2

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x2

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v5

    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0xc8

    const/4 v13, 0x0

    const/16 v16, 0xdf

    const/16 v17, 0xfc

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v9, v13, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x32

    const/4 v13, 0x0

    const/16 v16, 0xdf

    const/16 v17, 0xfc

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v9, v13, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mShader:Landroid/graphics/Shader;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x2

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x2

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x3

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x4

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x4

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    const/4 v3, 0x5

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->path5:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 1

    iget v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mScaleWidth:F

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mScaleHeight:F

    mul-float/2addr p3, v0

    iget v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mScaleWidth:F

    mul-float/2addr p4, v0

    iget v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mScaleHeight:F

    mul-float/2addr p5, v0

    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawROIRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 18

    sget v17, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_WIDTH:I

    sget v10, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_HEIGHT:I

    div-int/lit8 v11, v17, 0x3

    div-int/lit8 v16, v10, 0x10

    mul-int/lit8 v2, v17, 0x1

    div-int/lit8 v13, v2, 0x3

    mul-int/lit8 v2, v10, 0xd

    div-int/lit8 v12, v2, 0x10

    move v14, v11

    move/from16 v15, v16

    move v8, v13

    move v9, v12

    int-to-double v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v3

    int-to-double v4, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v4

    add-int v2, v14, v8

    int-to-double v6, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvX(D)F

    move-result v5

    add-int v2, v15, v9

    int-to-double v6, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/car/dvr/ADAS/AdasDrawView3;->cvY(D)F

    move-result v6

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRect(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 1

    iget v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mScaleWidth:F

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mScaleHeight:F

    mul-float/2addr p3, v0

    iget v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mScaleWidth:F

    mul-float/2addr p4, v0

    iget v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mScaleHeight:F

    mul-float/2addr p5, v0

    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRectAndText(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x3f

    iget v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mScaleWidth:F

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mScaleHeight:F

    mul-float/2addr p3, v0

    iget v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mScaleWidth:F

    mul-float/2addr p4, v0

    iget v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mScaleHeight:F

    mul-float/2addr p5, v0

    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xcc

    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRectCarBlue(Landroid/graphics/Canvas;Lcom/calmcar/adas/apiserver/model/AdasRect;)V
    .locals 7

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawRect(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRectCarGreen(Landroid/graphics/Canvas;Lcom/calmcar/adas/apiserver/model/AdasRect;)V
    .locals 10

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->isShowDis()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getAbsDis()D

    move-result-wide v8

    double-to-int v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawRectAndText(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawRect(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawRectCarOrange(Landroid/graphics/Canvas;Lcom/calmcar/adas/apiserver/model/AdasRect;)V
    .locals 7

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawRect(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRectCarRed(Landroid/graphics/Canvas;Lcom/calmcar/adas/apiserver/model/AdasRect;)V
    .locals 7

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/car/dvr/ADAS/AdasDrawView3;->drawRect(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawVanishPointCenter(Landroid/graphics/Canvas;)V
    .locals 12

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    sget-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    iget v2, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mScaleWidth:F

    float-to-double v2, v2

    mul-double v6, v0, v2

    sget-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y:D

    iget v2, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mScaleHeight:F

    float-to-double v2, v2

    mul-double v8, v0, v2

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sub-double v0, v6, v4

    double-to-float v1, v0

    double-to-float v2, v8

    add-double/2addr v4, v6

    double-to-float v3, v4

    double-to-float v4, v8

    iget-object v5, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    double-to-float v1, v6

    sub-double v2, v8, v10

    double-to-float v2, v2

    double-to-float v3, v6

    add-double v4, v8, v10

    double-to-float v4, v4

    iget-object v5, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public initDrawProcess(Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->matDrawProcessManager:Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;

    return-void
.end method

.method public initScale(II)V
    .locals 3

    int-to-double v0, p1

    iput-wide v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->curWidth:D

    int-to-double v0, p2

    iput-wide v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->curHeight:D

    sget v0, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_HEIGHT:I

    if-lez v0, :cond_0

    int-to-float v0, p2

    sget v1, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p1

    sget v2, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mScale:F

    :goto_0
    int-to-float v0, p1

    sget v1, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mScaleWidth:F

    int-to-float v0, p2

    sget v1, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mScaleHeight:F

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/car/dvr/ADAS/AdasDrawView3;->mScale:F

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/car/dvr/ADAS/AdasDrawView3;->initScale(II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/car/dvr/ADAS/AdasDrawView3;->initScale(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
