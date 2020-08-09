.class public Lcom/calmcar/adas/AdasDrawViewYL;
.super Lcom/calmcar/adas/apiserver/view/AdasDrawView;
.source "AdasDrawViewYL.java"


# instance fields
.field private a:Lcom/calmcar/adas/apiserver/out/MatDrawProcessMan;

.field private b:F

.field private c:Landroid/graphics/Paint;

.field private d:D

.field private e:D

.field private f:Landroid/graphics/Shader;

.field private g:Landroid/graphics/Path;

.field private h:F

.field private i:F

.field private j:F

.field private k:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/calmcar/adas/AdasDrawViewYL;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/calmcar/adas/AdasDrawViewYL;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const v0, 0x3faa3d71    # 1.33f

    invoke-direct {p0, p1, p2, p3}, Lcom/calmcar/adas/apiserver/view/AdasDrawView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->j:F

    iput v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->k:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/AdasDrawViewYL;->setOpaque(Z)V

    invoke-virtual {p0, p0}, Lcom/calmcar/adas/AdasDrawViewYL;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private a(D)F
    .locals 3

    iget v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->h:F

    float-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-float v0, v0

    return v0
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/calmcar/adas/AdasDrawViewYL;->setOpaque(Z)V

    invoke-virtual {p0, p0}, Lcom/calmcar/adas/AdasDrawViewYL;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    double-to-float v0, v0

    sget-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y:D

    double-to-float v1, v2

    const/high16 v2, 0x41c80000    # 25.0f

    sub-float v2, v0, v2

    const/high16 v3, 0x41f00000    # 30.0f

    add-float/2addr v1, v3

    const/high16 v3, 0x41700000    # 15.0f

    sub-float v3, v2, v3

    const/high16 v4, 0x41c80000    # 25.0f

    sub-float v4, v3, v4

    const/high16 v5, 0x41a00000    # 20.0f

    add-float/2addr v5, v1

    const/high16 v6, 0x41c80000    # 25.0f

    sub-float v6, v2, v6

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v8, v2

    invoke-direct {p0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v2

    float-to-double v8, v1

    invoke-direct {p0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v8

    invoke-virtual {v7, v2, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v8, v3

    invoke-direct {p0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    float-to-double v8, v1

    invoke-direct {p0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v2, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v8, v4

    invoke-direct {p0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    float-to-double v8, v5

    invoke-direct {p0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v8, v6

    invoke-direct {p0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    float-to-double v8, v5

    invoke-direct {p0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x41480000    # 12.5f

    sub-float v2, v6, v2

    const/high16 v3, 0x41200000    # 10.0f

    add-float/2addr v3, v5

    const/high16 v4, 0x41700000    # 15.0f

    sub-float v4, v2, v4

    const/high16 v6, 0x42480000    # 50.0f

    sub-float v6, v4, v6

    const/high16 v7, 0x42200000    # 40.0f

    add-float/2addr v7, v3

    const/high16 v8, 0x42480000    # 50.0f

    sub-float v8, v2, v8

    iget-object v9, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v2

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v2

    float-to-double v10, v3

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v10

    invoke-virtual {v9, v2, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v4

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v4

    float-to-double v10, v3

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v9

    invoke-virtual {v2, v4, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v6

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v4

    float-to-double v10, v7

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v6

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v8

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v4

    float-to-double v10, v7

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v6

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x41480000    # 12.5f

    sub-float v2, v8, v2

    const/high16 v4, 0x41200000    # 10.0f

    add-float/2addr v4, v7

    const/high16 v6, 0x41700000    # 15.0f

    sub-float v6, v2, v6

    const/high16 v8, 0x42960000    # 75.0f

    sub-float v8, v6, v8

    const/high16 v9, 0x42700000    # 60.0f

    add-float/2addr v9, v4

    const/high16 v10, 0x42960000    # 75.0f

    sub-float v10, v2, v10

    iget-object v11, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v12, v2

    invoke-direct {p0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v2

    float-to-double v12, v4

    invoke-direct {p0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v12

    invoke-virtual {v11, v2, v12}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v12, v6

    invoke-direct {p0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    float-to-double v12, v4

    invoke-direct {p0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v11

    invoke-virtual {v2, v6, v11}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v12, v8

    invoke-direct {p0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    float-to-double v12, v9

    invoke-direct {p0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v8

    invoke-virtual {v2, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v10

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    float-to-double v10, v9

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v8

    invoke-virtual {v2, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x41c80000    # 25.0f

    add-float/2addr v0, v2

    const/high16 v2, 0x41700000    # 15.0f

    add-float/2addr v2, v0

    const/high16 v6, 0x41c80000    # 25.0f

    add-float/2addr v6, v2

    const/high16 v8, 0x41c80000    # 25.0f

    add-float/2addr v8, v0

    iget-object v10, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v12, v0

    invoke-direct {p0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v0

    float-to-double v12, v1

    invoke-direct {p0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v11

    invoke-virtual {v10, v0, v11}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v2

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v2

    float-to-double v10, v1

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v6

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    float-to-double v10, v5

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v8

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    float-to-double v10, v5

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v0, 0x41480000    # 12.5f

    add-float/2addr v0, v8

    const/high16 v1, 0x41700000    # 15.0f

    add-float/2addr v1, v0

    const/high16 v2, 0x42480000    # 50.0f

    add-float/2addr v2, v1

    const/high16 v5, 0x42480000    # 50.0f

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v0

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v0

    float-to-double v10, v3

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v8

    invoke-virtual {v6, v0, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v1

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    float-to-double v10, v3

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v2, v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    float-to-double v2, v7

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v2, v5

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    float-to-double v2, v7

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v0, 0x41480000    # 12.5f

    add-float/2addr v0, v5

    const/high16 v1, 0x41700000    # 15.0f

    add-float/2addr v1, v0

    const/high16 v2, 0x42960000    # 75.0f

    add-float/2addr v2, v1

    const/high16 v3, 0x42960000    # 75.0f

    add-float/2addr v3, v0

    iget-object v5, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v6, v0

    invoke-direct {p0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v0

    float-to-double v6, v4

    invoke-direct {p0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v6

    invoke-virtual {v5, v0, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v6, v1

    invoke-direct {p0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    float-to-double v4, v4

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v4, v2

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    float-to-double v4, v9

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v2, v3

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    float-to-double v2, v9

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 6

    iget v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->h:F

    mul-float v1, v0, p2

    iget v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->i:F

    mul-float v2, v0, p3

    iget v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->h:F

    mul-float v3, v0, p4

    iget v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->i:F

    mul-float v4, v0, p5

    move-object v0, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0x3f

    iget v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->h:F

    mul-float v1, v0, p2

    iget v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->i:F

    mul-float v2, v0, p3

    iget v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->h:F

    mul-float v3, v0, p4

    iget v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->i:F

    mul-float v4, v0, p5

    move-object v0, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/16 v3, 0xcc

    invoke-static {v3, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " m"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 10

    sget v6, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_WIDTH:I

    sget v7, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_HEIGHT:I

    div-int/lit8 v0, v6, 0x2

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    iget v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->j:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v1, v0

    div-int/lit8 v0, v7, 0x2

    int-to-float v0, v0

    const/high16 v2, 0x42a00000    # 80.0f

    iget v3, p0, Lcom/calmcar/adas/AdasDrawViewYL;->k:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    const/high16 v2, 0x43a00000    # 320.0f

    iget v3, p0, Lcom/calmcar/adas/AdasDrawViewYL;->j:F

    mul-float/2addr v2, v3

    float-to-int v4, v2

    const/high16 v2, 0x43700000    # 240.0f

    iget v3, p0, Lcom/calmcar/adas/AdasDrawViewYL;->k:F

    mul-float/2addr v2, v3

    float-to-int v5, v2

    sget-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    const-wide/16 v8, 0x0

    cmpl-double v2, v2, v8

    if-lez v2, :cond_7

    sget-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X_TEMP:D

    const/high16 v2, 0x43200000    # 160.0f

    iget v3, p0, Lcom/calmcar/adas/AdasDrawViewYL;->j:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-int v1, v0

    sget-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y_TEMP:D

    const/high16 v0, 0x42a00000    # 80.0f

    iget v8, p0, Lcom/calmcar/adas/AdasDrawViewYL;->k:F

    mul-float/2addr v0, v8

    float-to-double v8, v0

    sub-double/2addr v2, v8

    double-to-int v0, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    add-int v2, v1, v4

    if-lt v2, v6, :cond_2

    sub-int v1, v6, v4

    :cond_2
    add-int v2, v0, v5

    if-lt v2, v7, :cond_7

    sub-int v0, v7, v5

    move v3, v1

    :goto_0
    int-to-double v8, v3

    invoke-direct {p0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    int-to-double v8, v0

    invoke-direct {p0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    add-int/2addr v3, v4

    int-to-double v8, v3

    invoke-direct {p0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    add-int/2addr v0, v5

    int-to-double v4, v0

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    div-int/lit8 v0, v6, 0x2

    int-to-float v0, v0

    const/high16 v1, 0x42a00000    # 80.0f

    iget v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->j:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v1, v0

    div-int/lit8 v0, v7, 0x2

    int-to-float v0, v0

    const/high16 v2, 0x42700000    # 60.0f

    iget v3, p0, Lcom/calmcar/adas/AdasDrawViewYL;->k:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    const/high16 v2, 0x43200000    # 160.0f

    iget v3, p0, Lcom/calmcar/adas/AdasDrawViewYL;->j:F

    mul-float/2addr v2, v3

    float-to-int v4, v2

    const/high16 v2, 0x43200000    # 160.0f

    iget v3, p0, Lcom/calmcar/adas/AdasDrawViewYL;->k:F

    mul-float/2addr v2, v3

    float-to-int v5, v2

    sget-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    const-wide/16 v8, 0x0

    cmpl-double v2, v2, v8

    if-lez v2, :cond_6

    sget-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X_TEMP:D

    const/high16 v2, 0x42a00000    # 80.0f

    iget v3, p0, Lcom/calmcar/adas/AdasDrawViewYL;->j:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-int v1, v0

    sget-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y_TEMP:D

    const/high16 v0, 0x42700000    # 60.0f

    iget v8, p0, Lcom/calmcar/adas/AdasDrawViewYL;->k:F

    mul-float/2addr v0, v8

    float-to-double v8, v0

    sub-double/2addr v2, v8

    double-to-int v0, v2

    if-gez v1, :cond_3

    const/4 v1, 0x0

    :cond_3
    if-gez v0, :cond_4

    const/4 v0, 0x0

    :cond_4
    add-int v2, v1, v4

    if-lt v2, v6, :cond_5

    sub-int v1, v6, v4

    :cond_5
    add-int v2, v0, v5

    if-lt v2, v7, :cond_6

    sub-int v0, v7, v5

    move v3, v1

    :goto_1
    int-to-double v6, v3

    invoke-direct {p0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    int-to-double v6, v0

    invoke-direct {p0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    add-int/2addr v3, v4

    int-to-double v6, v3

    invoke-direct {p0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    add-int/2addr v0, v5

    int-to-double v4, v0

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x42200000    # 40.0f

    const/high16 v3, 0x42200000    # 40.0f

    const/high16 v4, 0x44160000    # 600.0f

    const/high16 v5, 0x42700000    # 60.0f

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdasConf:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v8, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v8, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y:D

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "**********AdasConfTemp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v8, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X_TEMP:D

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v8, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y_TEMP:D

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;Ljava/lang/String;)V

    return-void

    :cond_6
    move v3, v1

    goto :goto_1

    :cond_7
    move v3, v1

    goto/16 :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Lcom/calmcar/adas/apiserver/model/AdasRect;)V
    .locals 10

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

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

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getAbsDis()D

    move-result-wide v8

    double-to-int v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;Ljava/lang/String;)V

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

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->b(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;)V
    .locals 12

    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->getShowType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    iget-object v0, p2, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    iget-object v0, p2, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->carRects:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/calmcar/adas/apiserver/model/AdasRect;

    iget-object v1, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    iget-object v1, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->isShowDis()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v6

    double-to-float v5, v6

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getAbsDis()D

    move-result-wide v10

    double-to-int v0, v10

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->b(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;->getFrontCarInfo()Lcom/calmcar/adas/apiserver/model/FrontCarInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getCarRect()Lcom/calmcar/adas/apiserver/model/AdasRect;

    move-result-object v1

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/FrontCarInfo;->getFrontCarStateType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->b(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/16 v2, 0x14

    if-ne v0, v2, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->b(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_6
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getT1()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasRect;->getBr()Lcom/calmcar/adas/apiserver/model/AdasPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->b(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method private a(Landroid/graphics/Canvas;Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;)V
    .locals 16

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    invoke-virtual/range {p2 .. p2}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getLdwType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    double-to-float v2, v2

    sget-wide v4, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y:D

    double-to-float v3, v4

    const/high16 v4, 0x41c80000    # 25.0f

    sub-float v4, v2, v4

    const/high16 v5, 0x41f00000    # 30.0f

    add-float/2addr v3, v5

    const/high16 v5, 0x41700000    # 15.0f

    sub-float v5, v4, v5

    const/high16 v6, 0x41c80000    # 25.0f

    sub-float v6, v5, v6

    const/high16 v7, 0x41a00000    # 20.0f

    add-float/2addr v7, v3

    const/high16 v8, 0x41c80000    # 25.0f

    sub-float v8, v4, v8

    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v4

    float-to-double v10, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v10

    invoke-virtual {v9, v4, v10}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v5

    float-to-double v10, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v9

    invoke-virtual {v4, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v5

    float-to-double v10, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v5

    float-to-double v10, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v4, 0x41480000    # 12.5f

    sub-float v4, v8, v4

    const/high16 v5, 0x41200000    # 10.0f

    add-float/2addr v5, v7

    const/high16 v6, 0x41700000    # 15.0f

    sub-float v6, v4, v6

    const/high16 v8, 0x42480000    # 50.0f

    sub-float v8, v6, v8

    const/high16 v9, 0x42200000    # 40.0f

    add-float/2addr v9, v5

    const/high16 v10, 0x42480000    # 50.0f

    sub-float v10, v4, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v12, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v4

    float-to-double v12, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v12

    invoke-virtual {v11, v4, v12}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v12, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    float-to-double v12, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v11

    invoke-virtual {v4, v6, v11}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v12, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    float-to-double v12, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v8

    invoke-virtual {v4, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v12, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    float-to-double v12, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v8

    invoke-virtual {v4, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v4, 0x41480000    # 12.5f

    sub-float v4, v10, v4

    const/high16 v6, 0x41200000    # 10.0f

    add-float/2addr v6, v9

    const/high16 v8, 0x41700000    # 15.0f

    sub-float v8, v4, v8

    const/high16 v10, 0x42960000    # 75.0f

    sub-float v10, v8, v10

    const/high16 v11, 0x42700000    # 60.0f

    add-float/2addr v11, v6

    const/high16 v12, 0x42960000    # 75.0f

    sub-float v12, v4, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v14, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v4

    float-to-double v14, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v14

    invoke-virtual {v13, v4, v14}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v14, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v8

    float-to-double v14, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v13

    invoke-virtual {v4, v8, v13}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v14, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v8

    float-to-double v14, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v10

    invoke-virtual {v4, v8, v10}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v12, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v8

    float-to-double v12, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v10

    invoke-virtual {v4, v8, v10}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v4, 0x41c80000    # 25.0f

    add-float/2addr v2, v4

    const/high16 v4, 0x41700000    # 15.0f

    add-float/2addr v4, v2

    const/high16 v8, 0x41c80000    # 25.0f

    add-float/2addr v8, v4

    const/high16 v10, 0x41c80000    # 25.0f

    add-float/2addr v10, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v14, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v2

    float-to-double v14, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v13

    invoke-virtual {v12, v2, v13}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v12, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v4

    float-to-double v12, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v12, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    float-to-double v12, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v12, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    float-to-double v12, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x41480000    # 12.5f

    add-float/2addr v2, v10

    const/high16 v3, 0x41700000    # 15.0f

    add-float/2addr v3, v2

    const/high16 v4, 0x42480000    # 50.0f

    add-float/2addr v4, v3

    const/high16 v7, 0x42480000    # 50.0f

    add-float/2addr v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v12, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v2

    float-to-double v12, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v10

    invoke-virtual {v8, v2, v10}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v12, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    float-to-double v12, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v4, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    float-to-double v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v4, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    float-to-double v4, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x41480000    # 12.5f

    add-float/2addr v2, v7

    const/high16 v3, 0x41700000    # 15.0f

    add-float/2addr v3, v2

    const/high16 v4, 0x42960000    # 75.0f

    add-float/2addr v4, v3

    const/high16 v5, 0x42960000    # 75.0f

    add-float/2addr v5, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v8, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v2

    float-to-double v8, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v8

    invoke-virtual {v7, v2, v8}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v8, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    float-to-double v6, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v6

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v6, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    float-to-double v6, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    float-to-double v4, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x2

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x2

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x3

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x3

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x4

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x4

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x4

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x4

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Lorg/opencv/core/Point;

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x5

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    neg-double v2, v2

    const/4 v4, 0x5

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double v12, v2, v4

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    add-double/2addr v2, v12

    double-to-float v6, v2

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    sub-double/2addr v2, v12

    double-to-float v4, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Lorg/opencv/core/Point;

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v8, v3, Lorg/opencv/core/Point;->y:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v9, Lorg/opencv/core/Point;

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x5

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    const/4 v3, 0x5

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v14, v3, Lorg/opencv/core/Point;->y:D

    add-double/2addr v6, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v14

    invoke-direct {v9, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v4, v2, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v4

    iget-wide v6, v2, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v6

    iget-wide v6, v2, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v12

    double-to-float v6, v6

    iget-wide v2, v2, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v2, v9, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v2, v12

    double-to-float v4, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->x:D

    double-to-float v6, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Lorg/opencv/core/Point;

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x2

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    const/4 v3, 0x2

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v8, v3, Lorg/opencv/core/Point;->y:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v9, Lorg/opencv/core/Point;

    const/4 v3, 0x3

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x3

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v14, v3, Lorg/opencv/core/Point;->y:D

    add-double/2addr v6, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v14

    invoke-direct {v9, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v4, v2, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v4

    iget-wide v6, v2, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v6

    iget-wide v6, v2, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v12

    double-to-float v6, v6

    iget-wide v2, v2, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v2, v9, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v2, v12

    double-to-float v4, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->x:D

    double-to-float v6, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x2

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x2

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    const/4 v5, 0x0

    aget-object v5, v10, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v5

    const/4 v6, 0x5

    aget-object v6, v10, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    aget-object v6, v10, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0xc8

    const/4 v11, 0x0

    const/16 v12, 0xdf

    const/16 v13, 0xfc

    invoke-static {v9, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x32

    const/4 v11, 0x0

    const/16 v12, 0xdf

    const/16 v13, 0xfc

    invoke-static {v9, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x0

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x2

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x3

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x4

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x5

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x5

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getShowType()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x2

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x2

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x3

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x3

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x4

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x4

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x4

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x4

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Lorg/opencv/core/Point;

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x5

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    neg-double v2, v2

    const/4 v4, 0x5

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double v12, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    add-double/2addr v2, v12

    double-to-float v6, v2

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    sub-double/2addr v2, v12

    double-to-float v4, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Lorg/opencv/core/Point;

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v8, v3, Lorg/opencv/core/Point;->y:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v9, Lorg/opencv/core/Point;

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x5

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    const/4 v3, 0x5

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v14, v3, Lorg/opencv/core/Point;->y:D

    add-double/2addr v6, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v14

    invoke-direct {v9, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v4, -0x10000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v4, v2, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v4

    iget-wide v6, v2, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v6

    iget-wide v6, v2, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v12

    double-to-float v6, v6

    iget-wide v2, v2, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v2, v9, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v2, v12

    double-to-float v4, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->x:D

    double-to-float v6, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Lorg/opencv/core/Point;

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x2

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    const/4 v3, 0x2

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v8, v3, Lorg/opencv/core/Point;->y:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v9, Lorg/opencv/core/Point;

    const/4 v3, 0x3

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x3

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v14, v3, Lorg/opencv/core/Point;->y:D

    add-double/2addr v6, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v14

    invoke-direct {v9, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v4, -0x10000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v4, v2, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v4

    iget-wide v6, v2, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v6

    iget-wide v6, v2, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v12

    double-to-float v6, v6

    iget-wide v2, v2, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v2, v9, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v2, v12

    double-to-float v4, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->x:D

    double-to-float v6, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x2

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x2

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    const/4 v5, 0x0

    aget-object v5, v10, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v5

    const/4 v6, 0x5

    aget-object v6, v10, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    aget-object v6, v10, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0xc8

    const/16 v11, 0xff

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x32

    const/16 v11, 0xff

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x0

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x2

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x3

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x4

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x5

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x5

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x2

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x2

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x3

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x3

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x4

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x4

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x4

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x4

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Lorg/opencv/core/Point;

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x5

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    neg-double v2, v2

    const/4 v4, 0x5

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double v12, v2, v4

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    add-double/2addr v2, v12

    double-to-float v6, v2

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    sub-double/2addr v2, v12

    double-to-float v4, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Lorg/opencv/core/Point;

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v8, v3, Lorg/opencv/core/Point;->y:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v9, Lorg/opencv/core/Point;

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x5

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    const/4 v3, 0x5

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v14, v3, Lorg/opencv/core/Point;->y:D

    add-double/2addr v6, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v14

    invoke-direct {v9, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v4, v2, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v4

    iget-wide v6, v2, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v6

    iget-wide v6, v2, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v12

    double-to-float v6, v6

    iget-wide v2, v2, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v2, v9, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v2, v12

    double-to-float v4, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->x:D

    double-to-float v6, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Lorg/opencv/core/Point;

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x2

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    const/4 v3, 0x2

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v8, v3, Lorg/opencv/core/Point;->y:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v9, Lorg/opencv/core/Point;

    const/4 v3, 0x3

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x3

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v14, v3, Lorg/opencv/core/Point;->y:D

    add-double/2addr v6, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v14

    invoke-direct {v9, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v4, v2, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v4

    iget-wide v6, v2, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v6

    iget-wide v6, v2, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v12

    double-to-float v6, v6

    iget-wide v2, v2, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v2, v9, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v2, v12

    double-to-float v4, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->x:D

    double-to-float v6, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x2

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x2

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    const/4 v5, 0x0

    aget-object v5, v10, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v5

    const/4 v6, 0x5

    aget-object v6, v10, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    aget-object v6, v10, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0xc8

    const/4 v11, 0x0

    const/16 v12, 0xdf

    const/16 v13, 0xfc

    invoke-static {v9, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x32

    const/4 v11, 0x0

    const/16 v12, 0xdf

    const/16 v13, 0xfc

    invoke-static {v9, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x0

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x2

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x3

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x4

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x5

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x5

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getShowType()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x2

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x2

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x3

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x3

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x4

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x4

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x4

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x4

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Lorg/opencv/core/Point;

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x5

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    neg-double v2, v2

    const/4 v4, 0x5

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double v12, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    add-double/2addr v2, v12

    double-to-float v6, v2

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    sub-double/2addr v2, v12

    double-to-float v4, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Lorg/opencv/core/Point;

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v8, v3, Lorg/opencv/core/Point;->y:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v3, Lorg/opencv/core/Point;

    const/4 v4, 0x4

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    const/4 v6, 0x5

    aget-object v6, v10, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v6, 0x4

    aget-object v6, v10, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    const/4 v8, 0x5

    aget-object v8, v10, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v4, -0xff0100

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v4, v2, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v4

    iget-wide v6, v2, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v6

    iget-wide v6, v2, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v12

    double-to-float v6, v6

    iget-wide v2, v2, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    sub-double/2addr v2, v12

    double-to-float v4, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Lorg/opencv/core/Point;

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x2

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    const/4 v3, 0x2

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v8, v3, Lorg/opencv/core/Point;->y:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v9, Lorg/opencv/core/Point;

    const/4 v3, 0x3

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x3

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v14, v3, Lorg/opencv/core/Point;->y:D

    add-double/2addr v6, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v14

    invoke-direct {v9, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v4, -0xff0100

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v4, v2, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v4

    iget-wide v6, v2, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v6

    iget-wide v6, v2, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v12

    double-to-float v6, v6

    iget-wide v2, v2, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v2, v9, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v2, v12

    double-to-float v4, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->x:D

    double-to-float v6, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x2

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x2

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    const/4 v5, 0x0

    aget-object v5, v10, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v5

    const/4 v6, 0x5

    aget-object v6, v10, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    aget-object v6, v10, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0xc8

    const/16 v11, 0xff

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x32

    const/16 v11, 0xff

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x0

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x2

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x3

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x4

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x5

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x5

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x1

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x2

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x2

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x3

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x3

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x4

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x4

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x4

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x4

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Lorg/opencv/core/Point;

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x5

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    neg-double v2, v2

    const/4 v4, 0x5

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v4

    iget-wide v4, v4, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double v12, v2, v4

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v4, v2

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    add-double/2addr v2, v12

    double-to-float v6, v2

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    sub-double/2addr v2, v12

    double-to-float v4, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v5, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    double-to-float v6, v2

    const/4 v2, 0x5

    aget-object v2, v10, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Lorg/opencv/core/Point;

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v8, v3, Lorg/opencv/core/Point;->y:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v9, Lorg/opencv/core/Point;

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x5

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    const/4 v3, 0x5

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v14, v3, Lorg/opencv/core/Point;->y:D

    add-double/2addr v6, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v14

    invoke-direct {v9, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v4, v2, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v4

    iget-wide v6, v2, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v6

    iget-wide v6, v2, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v12

    double-to-float v6, v6

    iget-wide v2, v2, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v2, v9, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v2, v12

    double-to-float v4, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->x:D

    double-to-float v6, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Lorg/opencv/core/Point;

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x2

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    const/4 v3, 0x2

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v8, v3, Lorg/opencv/core/Point;->y:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v9, Lorg/opencv/core/Point;

    const/4 v3, 0x3

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v4, v3, Lorg/opencv/core/Point;->x:D

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    const/4 v3, 0x3

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v6, v3, Lorg/opencv/core/Point;->y:D

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v3

    iget-wide v14, v3, Lorg/opencv/core/Point;->y:D

    add-double/2addr v6, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v14

    invoke-direct {v9, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v4, v2, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v4

    iget-wide v6, v2, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v6

    iget-wide v6, v2, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v12

    double-to-float v6, v6

    iget-wide v2, v2, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v2, v9, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v2, v12

    double-to-float v4, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->x:D

    double-to-float v6, v2

    iget-wide v2, v9, Lorg/opencv/core/Point;->y:D

    double-to-float v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/LinearGradient;

    const/4 v3, 0x2

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x2

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    const/4 v5, 0x0

    aget-object v5, v10, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v5

    const/4 v6, 0x5

    aget-object v6, v10, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    aget-object v6, v10, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v6

    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v9, 0xc8

    const/4 v11, 0x0

    const/16 v12, 0xdf

    const/16 v13, 0xfc

    invoke-static {v9, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x32

    const/4 v11, 0x0

    const/16 v12, 0xdf

    const/16 v13, 0xfc

    invoke-static {v9, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x0

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x1

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x2

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x3

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x4

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x4

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v3, 0x5

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x5

    aget-object v4, v10, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Landroid/graphics/Canvas;[Lcom/calmcar/adas/apiserver/model/AdasPoint;)V
    .locals 12

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v0, Lorg/opencv/core/Point;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v0

    iget-wide v0, v0, Lorg/opencv/core/Point;->x:D

    neg-double v0, v0

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double v8, v0, v2

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    add-double/2addr v0, v8

    double-to-float v4, v0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    sub-double/2addr v0, v8

    double-to-float v2, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v0, Lorg/opencv/core/Point;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v6, v1, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v7, Lorg/opencv/core/Point;

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v10, v1, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v10

    invoke-direct {v7, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v2, v0, Lorg/opencv/core/Point;->x:D

    double-to-float v2, v2

    iget-wide v4, v0, Lorg/opencv/core/Point;->y:D

    double-to-float v3, v4

    iget-wide v4, v0, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v8

    double-to-float v4, v4

    iget-wide v0, v0, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v0, v7, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v0, v8

    double-to-float v2, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->y:D

    double-to-float v3, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v0, Lorg/opencv/core/Point;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v6, v1, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v7, Lorg/opencv/core/Point;

    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v10, v1, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v10

    invoke-direct {v7, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v2, v0, Lorg/opencv/core/Point;->x:D

    double-to-float v2, v2

    iget-wide v4, v0, Lorg/opencv/core/Point;->y:D

    double-to-float v3, v4

    iget-wide v4, v0, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v8

    double-to-float v4, v4

    iget-wide v0, v0, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v0, v7, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v0, v8

    double-to-float v2, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->y:D

    double-to-float v3, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xc8

    const/4 v8, 0x0

    const/16 v9, 0xdf

    const/16 v10, 0xfc

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x32

    const/4 v8, 0x0

    const/16 v9, 0xdf

    const/16 v10, 0xfc

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;[Lcom/calmcar/adas/apiserver/model/AdasPoint;I)V
    .locals 12

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v0, Lorg/opencv/core/Point;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v0

    iget-wide v0, v0, Lorg/opencv/core/Point;->x:D

    neg-double v0, v0

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double v8, v0, v2

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    add-double/2addr v0, v8

    double-to-float v4, v0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    sub-double/2addr v0, v8

    double-to-float v2, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v0, Lorg/opencv/core/Point;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v6, v1, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v1, Lorg/opencv/core/Point;

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

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-object v1, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v2, v0, Lorg/opencv/core/Point;->x:D

    double-to-float v2, v2

    iget-wide v4, v0, Lorg/opencv/core/Point;->y:D

    double-to-float v3, v4

    iget-wide v4, v0, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v8

    double-to-float v4, v4

    iget-wide v0, v0, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    sub-double/2addr v0, v8

    double-to-float v2, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v0, Lorg/opencv/core/Point;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v6, v1, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v7, Lorg/opencv/core/Point;

    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v10, v1, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v10

    invoke-direct {v7, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-object v1, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v2, v0, Lorg/opencv/core/Point;->x:D

    double-to-float v2, v2

    iget-wide v4, v0, Lorg/opencv/core/Point;->y:D

    double-to-float v3, v4

    iget-wide v4, v0, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v8

    double-to-float v4, v4

    iget-wide v0, v0, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v0, v7, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v0, v8

    double-to-float v2, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->y:D

    double-to-float v3, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xc8

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x32

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v0, Lorg/opencv/core/Point;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v0

    iget-wide v0, v0, Lorg/opencv/core/Point;->x:D

    neg-double v0, v0

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double v8, v0, v2

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    add-double/2addr v0, v8

    double-to-float v4, v0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    sub-double/2addr v0, v8

    double-to-float v2, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v0, Lorg/opencv/core/Point;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v6, v1, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v7, Lorg/opencv/core/Point;

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v10, v1, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v10

    invoke-direct {v7, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v2, v0, Lorg/opencv/core/Point;->x:D

    double-to-float v2, v2

    iget-wide v4, v0, Lorg/opencv/core/Point;->y:D

    double-to-float v3, v4

    iget-wide v4, v0, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v8

    double-to-float v4, v4

    iget-wide v0, v0, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v0, v7, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v0, v8

    double-to-float v2, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->y:D

    double-to-float v3, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v0, Lorg/opencv/core/Point;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v6, v1, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v7, Lorg/opencv/core/Point;

    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v10, v1, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v10

    invoke-direct {v7, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v2, v0, Lorg/opencv/core/Point;->x:D

    double-to-float v2, v2

    iget-wide v4, v0, Lorg/opencv/core/Point;->y:D

    double-to-float v3, v4

    iget-wide v4, v0, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v8

    double-to-float v4, v4

    iget-wide v0, v0, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v0, v7, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v0, v8

    double-to-float v2, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->y:D

    double-to-float v3, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xc8

    const/4 v8, 0x0

    const/16 v9, 0xdf

    const/16 v10, 0xfc

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x32

    const/4 v8, 0x0

    const/16 v9, 0xdf

    const/16 v10, 0xfc

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private b(D)F
    .locals 3

    iget v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->i:F

    float-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-float v0, v0

    return v0
.end method

.method private static b()V
    .locals 0

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    sget-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    iget v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->h:F

    float-to-double v2, v2

    mul-double v6, v0, v2

    sget-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y:D

    iget v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->i:F

    float-to-double v2, v2

    mul-double v8, v0, v2

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    sub-double v0, v6, v0

    double-to-float v1, v0

    double-to-float v2, v8

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    add-double/2addr v4, v6

    double-to-float v3, v4

    double-to-float v4, v8

    iget-object v5, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    double-to-float v1, v6

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    sub-double v2, v8, v2

    double-to-float v2, v2

    double-to-float v3, v6

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    add-double/2addr v4, v8

    double-to-float v4, v4

    iget-object v5, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sget-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X_TEMP:D

    iget v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->h:F

    float-to-double v2, v2

    mul-double v6, v0, v2

    sget-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y_TEMP:D

    iget v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->i:F

    float-to-double v2, v2

    mul-double v8, v0, v2

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    sub-double v0, v6, v0

    double-to-float v1, v0

    double-to-float v2, v8

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    add-double/2addr v4, v6

    double-to-float v3, v4

    double-to-float v4, v8

    iget-object v5, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    double-to-float v1, v6

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    sub-double v2, v8, v2

    double-to-float v2, v2

    double-to-float v3, v6

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    add-double/2addr v4, v8

    double-to-float v4, v4

    iget-object v5, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 6

    iget v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->h:F

    mul-float v1, v0, p2

    iget v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->i:F

    mul-float v2, v0, p3

    iget v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->h:F

    mul-float v3, v0, p4

    iget v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->i:F

    mul-float v4, v0, p5

    move-object v0, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;Lcom/calmcar/adas/apiserver/model/AdasRect;)V
    .locals 7

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

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

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->b(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;[Lcom/calmcar/adas/apiserver/model/AdasPoint;I)V
    .locals 12

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v0, Lorg/opencv/core/Point;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v0

    iget-wide v0, v0, Lorg/opencv/core/Point;->x:D

    neg-double v0, v0

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double v8, v0, v2

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    add-double/2addr v0, v8

    double-to-float v4, v0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    sub-double/2addr v0, v8

    double-to-float v2, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v0, Lorg/opencv/core/Point;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v6, v1, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v7, Lorg/opencv/core/Point;

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v10, v1, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v10

    invoke-direct {v7, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-object v1, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v2, v0, Lorg/opencv/core/Point;->x:D

    double-to-float v2, v2

    iget-wide v4, v0, Lorg/opencv/core/Point;->y:D

    double-to-float v3, v4

    iget-wide v4, v0, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v8

    double-to-float v4, v4

    iget-wide v0, v0, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v0, v7, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v0, v8

    double-to-float v2, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->y:D

    double-to-float v3, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v0, Lorg/opencv/core/Point;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v6, v1, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v7, Lorg/opencv/core/Point;

    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v10, v1, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v10

    invoke-direct {v7, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-object v1, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v2, v0, Lorg/opencv/core/Point;->x:D

    double-to-float v2, v2

    iget-wide v4, v0, Lorg/opencv/core/Point;->y:D

    double-to-float v3, v4

    iget-wide v4, v0, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v8

    double-to-float v4, v4

    iget-wide v0, v0, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v0, v7, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v0, v8

    double-to-float v2, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->y:D

    double-to-float v3, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xc8

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x32

    const/16 v8, 0xff

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x4

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v0, Lorg/opencv/core/Point;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v0

    iget-wide v0, v0, Lorg/opencv/core/Point;->x:D

    neg-double v0, v0

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v2

    iget-wide v2, v2, Lorg/opencv/core/Point;->x:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double v8, v0, v2

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v2, v0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    add-double/2addr v0, v8

    double-to-float v4, v0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    sub-double/2addr v0, v8

    double-to-float v2, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v0

    double-to-float v4, v0

    const/4 v0, 0x5

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v0

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v0, Lorg/opencv/core/Point;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v6, v1, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v7, Lorg/opencv/core/Point;

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v10, v1, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v10

    invoke-direct {v7, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v2, v0, Lorg/opencv/core/Point;->x:D

    double-to-float v2, v2

    iget-wide v4, v0, Lorg/opencv/core/Point;->y:D

    double-to-float v3, v4

    iget-wide v4, v0, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v8

    double-to-float v4, v4

    iget-wide v0, v0, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v0, v7, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v0, v8

    double-to-float v2, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->y:D

    double-to-float v3, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v0, Lorg/opencv/core/Point;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v6, v1, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v7, Lorg/opencv/core/Point;

    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v2, v1, Lorg/opencv/core/Point;->x:D

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v4, v1, Lorg/opencv/core/Point;->y:D

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v1

    iget-wide v10, v1, Lorg/opencv/core/Point;->y:D

    add-double/2addr v4, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v10

    invoke-direct {v7, v2, v3, v4, v5}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v2, v0, Lorg/opencv/core/Point;->x:D

    double-to-float v2, v2

    iget-wide v4, v0, Lorg/opencv/core/Point;->y:D

    double-to-float v3, v4

    iget-wide v4, v0, Lorg/opencv/core/Point;->x:D

    add-double/2addr v4, v8

    double-to-float v4, v4

    iget-wide v0, v0, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v0, v7, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v0, v8

    double-to-float v2, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->y:D

    double-to-float v3, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->x:D

    double-to-float v4, v0

    iget-wide v0, v7, Lorg/opencv/core/Point;->y:D

    double-to-float v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-virtual {v3}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    const/4 v4, 0x5

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0xc8

    const/4 v8, 0x0

    const/16 v9, 0xdf

    const/16 v10, 0xfc

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/16 v7, 0x32

    const/4 v8, 0x0

    const/16 v9, 0xdf

    const/16 v10, 0xfc

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-wide v0, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    double-to-float v0, v0

    sget-wide v2, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y:D

    double-to-float v1, v2

    const/high16 v2, 0x41c80000    # 25.0f

    sub-float v2, v0, v2

    const/high16 v3, 0x41f00000    # 30.0f

    add-float/2addr v1, v3

    const/high16 v3, 0x41700000    # 15.0f

    sub-float v3, v2, v3

    const/high16 v4, 0x41c80000    # 25.0f

    sub-float v4, v3, v4

    const/high16 v5, 0x41a00000    # 20.0f

    add-float/2addr v5, v1

    const/high16 v6, 0x41c80000    # 25.0f

    sub-float v6, v2, v6

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v8, v2

    invoke-direct {p0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v2

    float-to-double v8, v1

    invoke-direct {p0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v8

    invoke-virtual {v7, v2, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v8, v3

    invoke-direct {p0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    float-to-double v8, v1

    invoke-direct {p0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v2, v3, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v8, v4

    invoke-direct {p0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    float-to-double v8, v5

    invoke-direct {p0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v8, v6

    invoke-direct {p0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v3

    float-to-double v8, v5

    invoke-direct {p0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x41480000    # 12.5f

    sub-float v2, v6, v2

    const/high16 v3, 0x41200000    # 10.0f

    add-float/2addr v3, v5

    const/high16 v4, 0x41700000    # 15.0f

    sub-float v4, v2, v4

    const/high16 v6, 0x42480000    # 50.0f

    sub-float v6, v4, v6

    const/high16 v7, 0x42200000    # 40.0f

    add-float/2addr v7, v3

    const/high16 v8, 0x42480000    # 50.0f

    sub-float v8, v2, v8

    iget-object v9, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v2

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v2

    float-to-double v10, v3

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v10

    invoke-virtual {v9, v2, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v4

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v4

    float-to-double v10, v3

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v9

    invoke-virtual {v2, v4, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v6

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v4

    float-to-double v10, v7

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v6

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v8

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v4

    float-to-double v10, v7

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v6

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x41480000    # 12.5f

    sub-float v2, v8, v2

    const/high16 v4, 0x41200000    # 10.0f

    add-float/2addr v4, v7

    const/high16 v6, 0x41700000    # 15.0f

    sub-float v6, v2, v6

    const/high16 v8, 0x42960000    # 75.0f

    sub-float v8, v6, v8

    const/high16 v9, 0x42700000    # 60.0f

    add-float/2addr v9, v4

    const/high16 v10, 0x42960000    # 75.0f

    sub-float v10, v2, v10

    iget-object v11, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v12, v2

    invoke-direct {p0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v2

    float-to-double v12, v4

    invoke-direct {p0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v12

    invoke-virtual {v11, v2, v12}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v12, v6

    invoke-direct {p0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    float-to-double v12, v4

    invoke-direct {p0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v11

    invoke-virtual {v2, v6, v11}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v12, v8

    invoke-direct {p0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    float-to-double v12, v9

    invoke-direct {p0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v8

    invoke-virtual {v2, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v10

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    float-to-double v10, v9

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v8

    invoke-virtual {v2, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, 0x41c80000    # 25.0f

    add-float/2addr v0, v2

    const/high16 v2, 0x41700000    # 15.0f

    add-float/2addr v2, v0

    const/high16 v6, 0x41c80000    # 25.0f

    add-float/2addr v6, v2

    const/high16 v8, 0x41c80000    # 25.0f

    add-float/2addr v8, v0

    iget-object v10, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v12, v0

    invoke-direct {p0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v0

    float-to-double v12, v1

    invoke-direct {p0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v11

    invoke-virtual {v10, v0, v11}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v2

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v2

    float-to-double v10, v1

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v6

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    float-to-double v10, v5

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v8

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    float-to-double v10, v5

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v0, 0x41480000    # 12.5f

    add-float/2addr v0, v8

    const/high16 v1, 0x41700000    # 15.0f

    add-float/2addr v1, v0

    const/high16 v2, 0x42480000    # 50.0f

    add-float/2addr v2, v1

    const/high16 v5, 0x42480000    # 50.0f

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v0

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v0

    float-to-double v10, v3

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v8

    invoke-virtual {v6, v0, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v1

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    float-to-double v10, v3

    invoke-direct {p0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v2, v2

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    float-to-double v2, v7

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v2, v5

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    float-to-double v2, v7

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v0, 0x41480000    # 12.5f

    add-float/2addr v0, v5

    const/high16 v1, 0x41700000    # 15.0f

    add-float/2addr v1, v0

    const/high16 v2, 0x42960000    # 75.0f

    add-float/2addr v2, v1

    const/high16 v3, 0x42960000    # 75.0f

    add-float/2addr v3, v0

    iget-object v5, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v6, v0

    invoke-direct {p0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v0

    float-to-double v6, v4

    invoke-direct {p0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v6

    invoke-virtual {v5, v0, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v6, v1

    invoke-direct {p0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    float-to-double v4, v4

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v4, v2

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    float-to-double v4, v9

    invoke-direct {p0, v4, v5}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v2, v3

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v1

    float-to-double v2, v9

    invoke-direct {p0, v2, v3}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;Lcom/calmcar/adas/apiserver/model/AdasRect;)V
    .locals 7

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

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

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->b(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;Lcom/calmcar/adas/apiserver/model/AdasRect;)V
    .locals 7

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

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

    iget-object v6, p0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/calmcar/adas/AdasDrawViewYL;->b(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public drawBitmap(Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;)V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/calmcar/adas/AdasDrawViewYL;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    sget-wide v6, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    move-object/from16 v0, p0

    iget v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->h:F

    float-to-double v8, v5

    mul-double v10, v6, v8

    sget-wide v6, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y:D

    move-object/from16 v0, p0

    iget v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->i:F

    float-to-double v8, v5

    mul-double v12, v6, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v6, -0xff0100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const-wide/high16 v6, 0x4054000000000000L    # 80.0

    sub-double v6, v10, v6

    double-to-float v5, v6

    double-to-float v6, v12

    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    add-double/2addr v8, v10

    double-to-float v7, v8

    double-to-float v8, v12

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    double-to-float v5, v10

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    sub-double v6, v12, v6

    double-to-float v6, v6

    double-to-float v7, v10

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    add-double/2addr v8, v12

    double-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sget-wide v6, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X_TEMP:D

    move-object/from16 v0, p0

    iget v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->h:F

    float-to-double v8, v5

    mul-double v10, v6, v8

    sget-wide v6, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y_TEMP:D

    move-object/from16 v0, p0

    iget v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->i:F

    float-to-double v8, v5

    mul-double v12, v6, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v6, -0x10000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const-wide/high16 v6, 0x4054000000000000L    # 80.0

    sub-double v6, v10, v6

    double-to-float v5, v6

    double-to-float v6, v12

    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    add-double/2addr v8, v10

    double-to-float v7, v8

    double-to-float v8, v12

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    double-to-float v5, v10

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    sub-double v6, v12, v6

    double-to-float v6, v6

    double-to-float v7, v10

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    add-double/2addr v8, v12

    double-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    sget v10, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_WIDTH:I

    sget v11, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_HEIGHT:I

    div-int/lit8 v5, v10, 0x2

    int-to-float v5, v5

    const/high16 v6, 0x43200000    # 160.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/calmcar/adas/AdasDrawViewYL;->j:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v6, v5

    div-int/lit8 v5, v11, 0x2

    int-to-float v5, v5

    const/high16 v7, 0x42a00000    # 80.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->k:F

    mul-float/2addr v7, v8

    sub-float/2addr v5, v7

    float-to-int v5, v5

    const/high16 v7, 0x43a00000    # 320.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->j:F

    mul-float/2addr v7, v8

    float-to-int v12, v7

    const/high16 v7, 0x43700000    # 240.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->k:F

    mul-float/2addr v7, v8

    float-to-int v13, v7

    sget-wide v14, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    const-wide/16 v16, 0x0

    cmpl-double v7, v14, v16

    if-lez v7, :cond_b

    sget-wide v6, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X_TEMP:D

    const/high16 v5, 0x43200000    # 160.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->j:F

    mul-float/2addr v5, v8

    float-to-double v14, v5

    sub-double/2addr v6, v14

    double-to-int v6, v6

    sget-wide v14, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y_TEMP:D

    const/high16 v5, 0x42a00000    # 80.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/calmcar/adas/AdasDrawViewYL;->k:F

    mul-float/2addr v5, v7

    float-to-double v0, v5

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    double-to-int v5, v14

    if-gez v6, :cond_0

    const/4 v6, 0x0

    :cond_0
    if-gez v5, :cond_1

    const/4 v5, 0x0

    :cond_1
    add-int v7, v6, v12

    if-lt v7, v10, :cond_2

    sub-int v6, v10, v12

    :cond_2
    add-int v7, v5, v13

    if-lt v7, v11, :cond_b

    sub-int v5, v11, v13

    move v8, v5

    move v7, v6

    :goto_0
    int-to-double v14, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v5

    int-to-double v14, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v6

    add-int/2addr v7, v12

    int-to-double v14, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v7

    add-int/2addr v8, v13

    int-to-double v12, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v8

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    div-int/lit8 v5, v10, 0x2

    int-to-float v5, v5

    const/high16 v6, 0x42a00000    # 80.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/calmcar/adas/AdasDrawViewYL;->j:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v6, v5

    div-int/lit8 v5, v11, 0x2

    int-to-float v5, v5

    const/high16 v7, 0x42700000    # 60.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->k:F

    mul-float/2addr v7, v8

    sub-float/2addr v5, v7

    float-to-int v5, v5

    const/high16 v7, 0x43200000    # 160.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->j:F

    mul-float/2addr v7, v8

    float-to-int v12, v7

    const/high16 v7, 0x43200000    # 160.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->k:F

    mul-float/2addr v7, v8

    float-to-int v13, v7

    sget-wide v14, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    const-wide/16 v16, 0x0

    cmpl-double v7, v14, v16

    if-lez v7, :cond_a

    sget-wide v6, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X_TEMP:D

    const/high16 v5, 0x42a00000    # 80.0f

    move-object/from16 v0, p0

    iget v8, v0, Lcom/calmcar/adas/AdasDrawViewYL;->j:F

    mul-float/2addr v5, v8

    float-to-double v14, v5

    sub-double/2addr v6, v14

    double-to-int v6, v6

    sget-wide v14, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y_TEMP:D

    const/high16 v5, 0x42700000    # 60.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/calmcar/adas/AdasDrawViewYL;->k:F

    mul-float/2addr v5, v7

    float-to-double v0, v5

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    double-to-int v5, v14

    if-gez v6, :cond_3

    const/4 v6, 0x0

    :cond_3
    if-gez v5, :cond_4

    const/4 v5, 0x0

    :cond_4
    add-int v7, v6, v12

    if-lt v7, v10, :cond_5

    sub-int v6, v10, v12

    :cond_5
    add-int v7, v5, v13

    if-lt v7, v11, :cond_a

    sub-int v5, v11, v13

    move v8, v5

    move v7, v6

    :goto_1
    int-to-double v10, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v5

    int-to-double v10, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v6

    add-int/2addr v7, v12

    int-to-double v10, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v7

    add-int/2addr v8, v13

    int-to-double v10, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v8

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/high16 v7, 0x42200000    # 40.0f

    const/high16 v8, 0x42200000    # 40.0f

    const/high16 v9, 0x44160000    # 600.0f

    const/high16 v10, 0x42700000    # 60.0f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AdasConf:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v12, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v12, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y:D

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "**********AdasConfTemp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v12, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X_TEMP:D

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v12, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y_TEMP:D

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v12}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->lineRect:[Lcom/calmcar/adas/apiserver/model/AdasPoint;

    invoke-virtual/range {p1 .. p1}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getLdwType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_6
    :goto_2
    :pswitch_0
    if-eqz p2, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;Lcom/calmcar/adas/apiserver/model/CdwDetectInfo;)V

    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/calmcar/adas/AdasDrawViewYL;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-wide v6, Lcom/calmcar/adas/apiserver/AdasConf;->VP_X:D

    double-to-float v5, v6

    sget-wide v6, Lcom/calmcar/adas/apiserver/AdasConf;->VP_Y:D

    double-to-float v6, v6

    const/high16 v7, 0x41c80000    # 25.0f

    sub-float v7, v5, v7

    const/high16 v8, 0x41f00000    # 30.0f

    add-float/2addr v6, v8

    const/high16 v8, 0x41700000    # 15.0f

    sub-float v8, v7, v8

    const/high16 v9, 0x41c80000    # 25.0f

    sub-float v9, v8, v9

    const/high16 v10, 0x41a00000    # 20.0f

    add-float/2addr v10, v6

    const/high16 v11, 0x41c80000    # 25.0f

    sub-float v11, v7, v11

    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v14, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v7

    float-to-double v14, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v13

    invoke-virtual {v12, v7, v13}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v12, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v8

    float-to-double v12, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v12

    invoke-virtual {v7, v8, v12}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v8, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v8

    float-to-double v12, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v8, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v8

    float-to-double v12, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v7, 0x41480000    # 12.5f

    sub-float v7, v11, v7

    const/high16 v8, 0x41200000    # 10.0f

    add-float/2addr v8, v10

    const/high16 v9, 0x41700000    # 15.0f

    sub-float v9, v7, v9

    const/high16 v11, 0x42480000    # 50.0f

    sub-float v11, v9, v11

    const/high16 v12, 0x42200000    # 40.0f

    add-float/2addr v12, v8

    const/high16 v13, 0x42480000    # 50.0f

    sub-float v13, v7, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v0, v7

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v7

    float-to-double v0, v8

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v15

    invoke-virtual {v14, v7, v15}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v14, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v9

    float-to-double v14, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v14

    invoke-virtual {v7, v9, v14}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v14, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v9

    float-to-double v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v11

    invoke-virtual {v7, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v14, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v9

    float-to-double v14, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v11

    invoke-virtual {v7, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v7, 0x41480000    # 12.5f

    sub-float v7, v13, v7

    const/high16 v9, 0x41200000    # 10.0f

    add-float/2addr v9, v12

    const/high16 v11, 0x41700000    # 15.0f

    sub-float v11, v7, v11

    const/high16 v13, 0x42960000    # 75.0f

    sub-float v13, v11, v13

    const/high16 v14, 0x42700000    # 60.0f

    add-float/2addr v14, v9

    const/high16 v15, 0x42960000    # 75.0f

    sub-float v15, v7, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v16, v0

    float-to-double v0, v7

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v7

    float-to-double v0, v9

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v0, v11

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v11

    float-to-double v0, v9

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v11, v0}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v0, v13

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v11

    float-to-double v0, v14

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v13

    invoke-virtual {v7, v11, v13}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v11

    float-to-double v0, v14

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v13

    invoke-virtual {v7, v11, v13}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v7, 0x41c80000    # 25.0f

    add-float/2addr v5, v7

    const/high16 v7, 0x41700000    # 15.0f

    add-float/2addr v7, v5

    const/high16 v11, 0x41c80000    # 25.0f

    add-float/2addr v11, v7

    const/high16 v13, 0x41c80000    # 25.0f

    add-float/2addr v13, v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v0, v5

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v5

    float-to-double v0, v6

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v0, v7

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v7

    float-to-double v0, v6

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v6

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v6, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    float-to-double v0, v10

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v6, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    float-to-double v10, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v5, 0x41480000    # 12.5f

    add-float/2addr v5, v13

    const/high16 v6, 0x41700000    # 15.0f

    add-float/2addr v6, v5

    const/high16 v7, 0x42480000    # 50.0f

    add-float/2addr v7, v6

    const/high16 v10, 0x42480000    # 50.0f

    add-float/2addr v10, v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v0, v5

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v5

    float-to-double v0, v8

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v13

    invoke-virtual {v11, v5, v13}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v0, v6

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    float-to-double v0, v8

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v8

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v6, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    float-to-double v0, v12

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v6, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    float-to-double v12, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v5, 0x41480000    # 12.5f

    add-float/2addr v5, v10

    const/high16 v6, 0x41700000    # 15.0f

    add-float/2addr v6, v5

    const/high16 v7, 0x42960000    # 75.0f

    add-float/2addr v7, v6

    const/high16 v8, 0x42960000    # 75.0f

    add-float/2addr v8, v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v12, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v5

    float-to-double v12, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v11

    invoke-virtual {v10, v5, v11}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v10, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    float-to-double v10, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v9

    invoke-virtual {v5, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v6, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    float-to-double v10, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    float-to-double v6, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    float-to-double v8, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v6, -0xff0100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x1

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x1

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v5, 0x1

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x1

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x2

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x2

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v5, 0x3

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x3

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x4

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x4

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v5, 0x4

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x4

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v5, Lorg/opencv/core/Point;

    const/4 v6, 0x0

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x5

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x0

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v5

    iget-wide v6, v5, Lorg/opencv/core/Point;->x:D

    neg-double v6, v6

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v5

    iget-wide v8, v5, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    div-double v14, v6, v8

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    add-double/2addr v10, v14

    double-to-float v9, v10

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    sub-double/2addr v6, v14

    double-to-float v7, v6

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v5, Lorg/opencv/core/Point;

    const/4 v6, 0x0

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x1

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x0

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    const/4 v10, 0x1

    aget-object v10, v13, v10

    invoke-virtual {v10}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v10

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v12, Lorg/opencv/core/Point;

    const/4 v6, 0x4

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x5

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x4

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    const/4 v10, 0x5

    aget-object v10, v13, v10

    invoke-virtual {v10}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v10

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {v12, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v6, v5, Lorg/opencv/core/Point;->x:D

    double-to-float v7, v6

    iget-wide v8, v5, Lorg/opencv/core/Point;->y:D

    double-to-float v8, v8

    iget-wide v10, v5, Lorg/opencv/core/Point;->x:D

    add-double/2addr v10, v14

    double-to-float v9, v10

    iget-wide v10, v5, Lorg/opencv/core/Point;->y:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v6, v12, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v6, v14

    double-to-float v7, v6

    iget-wide v8, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v8, v8

    iget-wide v10, v12, Lorg/opencv/core/Point;->x:D

    double-to-float v9, v10

    iget-wide v10, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v5, Lorg/opencv/core/Point;

    const/4 v6, 0x1

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x2

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x1

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    const/4 v10, 0x2

    aget-object v10, v13, v10

    invoke-virtual {v10}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v10

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v12, Lorg/opencv/core/Point;

    const/4 v6, 0x3

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x4

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x3

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    const/4 v10, 0x4

    aget-object v10, v13, v10

    invoke-virtual {v10}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v10

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {v12, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v6, v5, Lorg/opencv/core/Point;->x:D

    double-to-float v7, v6

    iget-wide v8, v5, Lorg/opencv/core/Point;->y:D

    double-to-float v8, v8

    iget-wide v10, v5, Lorg/opencv/core/Point;->x:D

    add-double/2addr v10, v14

    double-to-float v9, v10

    iget-wide v10, v5, Lorg/opencv/core/Point;->y:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v6, v12, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v6, v14

    double-to-float v7, v6

    iget-wide v8, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v8, v8

    iget-wide v10, v12, Lorg/opencv/core/Point;->x:D

    double-to-float v9, v10

    iget-wide v10, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/LinearGradient;

    const/4 v6, 0x2

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x3

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/4 v7, 0x2

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    const/4 v8, 0x0

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v8

    const/4 v9, 0x5

    aget-object v9, v13, v9

    invoke-virtual {v9}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/4 v9, 0x0

    aget-object v9, v13, v9

    invoke-virtual {v9}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v9

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/16 v12, 0xc8

    const/4 v14, 0x0

    const/16 v15, 0xdf

    const/16 v16, 0xfc

    move/from16 v0, v16

    invoke-static {v12, v14, v15, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/16 v12, 0x32

    const/4 v14, 0x0

    const/16 v15, 0xdf

    const/16 v16, 0xfc

    move/from16 v0, v16

    invoke-static {v12, v14, v15, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x0

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x0

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x1

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x1

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x2

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x2

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x3

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x3

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x4

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x4

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x5

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x5

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getShowType()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v6, -0x10000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x1

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x1

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v5, 0x1

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x1

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x2

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x2

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v6, -0xff0100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x3

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x3

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x4

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x4

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v5, 0x4

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x4

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v5, Lorg/opencv/core/Point;

    const/4 v6, 0x0

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x5

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x0

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v5

    iget-wide v6, v5, Lorg/opencv/core/Point;->x:D

    neg-double v6, v6

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v5

    iget-wide v8, v5, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    div-double v14, v6, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v6, -0x10000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    add-double/2addr v10, v14

    double-to-float v9, v10

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v6, -0xff0100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    sub-double/2addr v6, v14

    double-to-float v7, v6

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v5, Lorg/opencv/core/Point;

    const/4 v6, 0x0

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x1

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x0

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    const/4 v10, 0x1

    aget-object v10, v13, v10

    invoke-virtual {v10}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v10

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v12, Lorg/opencv/core/Point;

    const/4 v6, 0x4

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x5

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x4

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    const/4 v10, 0x5

    aget-object v10, v13, v10

    invoke-virtual {v10}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v10

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {v12, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v7, -0x10000

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v6, v5, Lorg/opencv/core/Point;->x:D

    double-to-float v7, v6

    iget-wide v8, v5, Lorg/opencv/core/Point;->y:D

    double-to-float v8, v8

    iget-wide v10, v5, Lorg/opencv/core/Point;->x:D

    add-double/2addr v10, v14

    double-to-float v9, v10

    iget-wide v10, v5, Lorg/opencv/core/Point;->y:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v6, -0xff0100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v6, v12, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v6, v14

    double-to-float v7, v6

    iget-wide v8, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v8, v8

    iget-wide v10, v12, Lorg/opencv/core/Point;->x:D

    double-to-float v9, v10

    iget-wide v10, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v5, Lorg/opencv/core/Point;

    const/4 v6, 0x1

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x2

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x1

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    const/4 v10, 0x2

    aget-object v10, v13, v10

    invoke-virtual {v10}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v10

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v12, Lorg/opencv/core/Point;

    const/4 v6, 0x3

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x4

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x3

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    const/4 v10, 0x4

    aget-object v10, v13, v10

    invoke-virtual {v10}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v10

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {v12, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v7, -0x10000

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v6, v5, Lorg/opencv/core/Point;->x:D

    double-to-float v7, v6

    iget-wide v8, v5, Lorg/opencv/core/Point;->y:D

    double-to-float v8, v8

    iget-wide v10, v5, Lorg/opencv/core/Point;->x:D

    add-double/2addr v10, v14

    double-to-float v9, v10

    iget-wide v10, v5, Lorg/opencv/core/Point;->y:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v6, -0xff0100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v6, v12, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v6, v14

    double-to-float v7, v6

    iget-wide v8, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v8, v8

    iget-wide v10, v12, Lorg/opencv/core/Point;->x:D

    double-to-float v9, v10

    iget-wide v10, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/LinearGradient;

    const/4 v6, 0x2

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x3

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/4 v7, 0x2

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    const/4 v8, 0x0

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v8

    const/4 v9, 0x5

    aget-object v9, v13, v9

    invoke-virtual {v9}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/4 v9, 0x0

    aget-object v9, v13, v9

    invoke-virtual {v9}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v9

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/16 v12, 0xc8

    const/16 v14, 0xff

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v12, v14, v15, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/16 v12, 0x32

    const/16 v14, 0xff

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v12, v14, v15, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x0

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x0

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x1

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x1

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x2

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x2

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x3

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x3

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x4

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x4

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x5

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x5

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v6, -0xff0100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x1

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x1

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v5, 0x1

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x1

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x2

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x2

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v5, 0x3

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x3

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x4

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x4

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v5, 0x4

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x4

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v5, Lorg/opencv/core/Point;

    const/4 v6, 0x0

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x5

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x0

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v5

    iget-wide v6, v5, Lorg/opencv/core/Point;->x:D

    neg-double v6, v6

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v5

    iget-wide v8, v5, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    div-double v14, v6, v8

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    add-double/2addr v10, v14

    double-to-float v9, v10

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    sub-double/2addr v6, v14

    double-to-float v7, v6

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v5, Lorg/opencv/core/Point;

    const/4 v6, 0x0

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x1

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x0

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    const/4 v10, 0x1

    aget-object v10, v13, v10

    invoke-virtual {v10}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v10

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v12, Lorg/opencv/core/Point;

    const/4 v6, 0x4

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x5

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x4

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    const/4 v10, 0x5

    aget-object v10, v13, v10

    invoke-virtual {v10}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v10

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {v12, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v6, v5, Lorg/opencv/core/Point;->x:D

    double-to-float v7, v6

    iget-wide v8, v5, Lorg/opencv/core/Point;->y:D

    double-to-float v8, v8

    iget-wide v10, v5, Lorg/opencv/core/Point;->x:D

    add-double/2addr v10, v14

    double-to-float v9, v10

    iget-wide v10, v5, Lorg/opencv/core/Point;->y:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v6, v12, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v6, v14

    double-to-float v7, v6

    iget-wide v8, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v8, v8

    iget-wide v10, v12, Lorg/opencv/core/Point;->x:D

    double-to-float v9, v10

    iget-wide v10, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v5, Lorg/opencv/core/Point;

    const/4 v6, 0x1

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x2

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x1

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    const/4 v10, 0x2

    aget-object v10, v13, v10

    invoke-virtual {v10}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v10

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v12, Lorg/opencv/core/Point;

    const/4 v6, 0x3

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x4

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x3

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    const/4 v10, 0x4

    aget-object v10, v13, v10

    invoke-virtual {v10}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v10

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {v12, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v6, v5, Lorg/opencv/core/Point;->x:D

    double-to-float v7, v6

    iget-wide v8, v5, Lorg/opencv/core/Point;->y:D

    double-to-float v8, v8

    iget-wide v10, v5, Lorg/opencv/core/Point;->x:D

    add-double/2addr v10, v14

    double-to-float v9, v10

    iget-wide v10, v5, Lorg/opencv/core/Point;->y:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v6, v12, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v6, v14

    double-to-float v7, v6

    iget-wide v8, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v8, v8

    iget-wide v10, v12, Lorg/opencv/core/Point;->x:D

    double-to-float v9, v10

    iget-wide v10, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/LinearGradient;

    const/4 v6, 0x2

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x3

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/4 v7, 0x2

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    const/4 v8, 0x0

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v8

    const/4 v9, 0x5

    aget-object v9, v13, v9

    invoke-virtual {v9}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/4 v9, 0x0

    aget-object v9, v13, v9

    invoke-virtual {v9}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v9

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/16 v12, 0xc8

    const/4 v14, 0x0

    const/16 v15, 0xdf

    const/16 v16, 0xfc

    move/from16 v0, v16

    invoke-static {v12, v14, v15, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/16 v12, 0x32

    const/4 v14, 0x0

    const/16 v15, 0xdf

    const/16 v16, 0xfc

    move/from16 v0, v16

    invoke-static {v12, v14, v15, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x0

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x0

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x1

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x1

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x2

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x2

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x3

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x3

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x4

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x4

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x5

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x5

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/calmcar/adas/apiserver/model/LdwDetectInfo;->getShowType()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v6, -0xff0100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x1

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x1

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v5, 0x1

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x1

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x2

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x2

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v6, -0x10000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x3

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x3

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x4

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x4

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v5, 0x4

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x4

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v5, Lorg/opencv/core/Point;

    const/4 v6, 0x0

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x5

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x0

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v5

    iget-wide v6, v5, Lorg/opencv/core/Point;->x:D

    neg-double v6, v6

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v5

    iget-wide v8, v5, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    div-double v14, v6, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v6, -0xff0100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    add-double/2addr v10, v14

    double-to-float v9, v10

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v6, -0x10000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    sub-double/2addr v6, v14

    double-to-float v7, v6

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v5, Lorg/opencv/core/Point;

    const/4 v6, 0x0

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x1

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x0

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    const/4 v10, 0x1

    aget-object v10, v13, v10

    invoke-virtual {v10}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v10

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v6, Lorg/opencv/core/Point;

    const/4 v7, 0x4

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v7

    iget-wide v8, v7, Lorg/opencv/core/Point;->x:D

    const/4 v7, 0x5

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v7

    iget-wide v10, v7, Lorg/opencv/core/Point;->x:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    const/4 v7, 0x4

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v7

    iget-wide v10, v7, Lorg/opencv/core/Point;->y:D

    const/4 v7, 0x5

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v7

    iget-wide v0, v7, Lorg/opencv/core/Point;->y:D

    move-wide/from16 v16, v0

    add-double v10, v10, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v10, v10, v16

    invoke-direct {v6, v8, v9, v10, v11}, Lorg/opencv/core/Point;-><init>(DD)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v7, -0xff0100

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v6, v5, Lorg/opencv/core/Point;->x:D

    double-to-float v7, v6

    iget-wide v8, v5, Lorg/opencv/core/Point;->y:D

    double-to-float v8, v8

    iget-wide v10, v5, Lorg/opencv/core/Point;->x:D

    add-double/2addr v10, v14

    double-to-float v9, v10

    iget-wide v10, v5, Lorg/opencv/core/Point;->y:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v6, -0x10000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    sub-double/2addr v6, v14

    double-to-float v7, v6

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v5, Lorg/opencv/core/Point;

    const/4 v6, 0x1

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x2

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x1

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    const/4 v10, 0x2

    aget-object v10, v13, v10

    invoke-virtual {v10}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v10

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v12, Lorg/opencv/core/Point;

    const/4 v6, 0x3

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x4

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x3

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    const/4 v10, 0x4

    aget-object v10, v13, v10

    invoke-virtual {v10}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v10

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {v12, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v7, -0xff0100

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v6, v5, Lorg/opencv/core/Point;->x:D

    double-to-float v7, v6

    iget-wide v8, v5, Lorg/opencv/core/Point;->y:D

    double-to-float v8, v8

    iget-wide v10, v5, Lorg/opencv/core/Point;->x:D

    add-double/2addr v10, v14

    double-to-float v9, v10

    iget-wide v10, v5, Lorg/opencv/core/Point;->y:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const/high16 v6, -0x10000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-wide v6, v12, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v6, v14

    double-to-float v7, v6

    iget-wide v8, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v8, v8

    iget-wide v10, v12, Lorg/opencv/core/Point;->x:D

    double-to-float v9, v10

    iget-wide v10, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/LinearGradient;

    const/4 v6, 0x2

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x3

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/4 v7, 0x2

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    const/4 v8, 0x0

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v8

    const/4 v9, 0x5

    aget-object v9, v13, v9

    invoke-virtual {v9}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/4 v9, 0x0

    aget-object v9, v13, v9

    invoke-virtual {v9}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v9

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/16 v12, 0xc8

    const/16 v14, 0xff

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v12, v14, v15, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/16 v12, 0x32

    const/16 v14, 0xff

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v12, v14, v15, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x0

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x0

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x1

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x1

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x2

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x2

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x3

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x3

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x4

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x4

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x5

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x5

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    const v6, -0xff0100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x1

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x1

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v5, 0x1

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x1

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x2

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x2

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v5, 0x3

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x3

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x4

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x4

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v5, 0x4

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x4

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v5, Lorg/opencv/core/Point;

    const/4 v6, 0x0

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x5

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x0

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v5

    iget-wide v6, v5, Lorg/opencv/core/Point;->x:D

    neg-double v6, v6

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v5

    iget-wide v8, v5, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    div-double v14, v6, v8

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    double-to-float v7, v6

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    add-double/2addr v10, v14

    double-to-float v9, v10

    const/4 v5, 0x0

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    sub-double/2addr v6, v14

    double-to-float v7, v6

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    double-to-float v9, v10

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v5, Lorg/opencv/core/Point;

    const/4 v6, 0x0

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x1

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x0

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    const/4 v10, 0x1

    aget-object v10, v13, v10

    invoke-virtual {v10}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v10

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v12, Lorg/opencv/core/Point;

    const/4 v6, 0x4

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x5

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x4

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    const/4 v10, 0x5

    aget-object v10, v13, v10

    invoke-virtual {v10}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v10

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {v12, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v6, v5, Lorg/opencv/core/Point;->x:D

    double-to-float v7, v6

    iget-wide v8, v5, Lorg/opencv/core/Point;->y:D

    double-to-float v8, v8

    iget-wide v10, v5, Lorg/opencv/core/Point;->x:D

    add-double/2addr v10, v14

    double-to-float v9, v10

    iget-wide v10, v5, Lorg/opencv/core/Point;->y:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v6, v12, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v6, v14

    double-to-float v7, v6

    iget-wide v8, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v8, v8

    iget-wide v10, v12, Lorg/opencv/core/Point;->x:D

    double-to-float v9, v10

    iget-wide v10, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v5, Lorg/opencv/core/Point;

    const/4 v6, 0x1

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x2

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x1

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    const/4 v10, 0x2

    aget-object v10, v13, v10

    invoke-virtual {v10}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v10

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v12, Lorg/opencv/core/Point;

    const/4 v6, 0x3

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v6

    iget-wide v6, v6, Lorg/opencv/core/Point;->x:D

    const/4 v8, 0x4

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->x:D

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const/4 v8, 0x3

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v8

    iget-wide v8, v8, Lorg/opencv/core/Point;->y:D

    const/4 v10, 0x4

    aget-object v10, v13, v10

    invoke-virtual {v10}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->convertPoint()Lorg/opencv/core/Point;

    move-result-object v10

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    invoke-direct {v12, v6, v7, v8, v9}, Lorg/opencv/core/Point;-><init>(DD)V

    iget-wide v6, v5, Lorg/opencv/core/Point;->x:D

    double-to-float v7, v6

    iget-wide v8, v5, Lorg/opencv/core/Point;->y:D

    double-to-float v8, v8

    iget-wide v10, v5, Lorg/opencv/core/Point;->x:D

    add-double/2addr v10, v14

    double-to-float v9, v10

    iget-wide v10, v5, Lorg/opencv/core/Point;->y:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    iget-wide v6, v12, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v6, v14

    double-to-float v7, v6

    iget-wide v8, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v8, v8

    iget-wide v10, v12, Lorg/opencv/core/Point;->x:D

    double-to-float v9, v10

    iget-wide v10, v12, Lorg/opencv/core/Point;->y:D

    double-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v5, p0

    move-object v6, v4

    invoke-direct/range {v5 .. v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/LinearGradient;

    const/4 v6, 0x2

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x3

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/4 v7, 0x2

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    const/4 v8, 0x0

    aget-object v8, v13, v8

    invoke-virtual {v8}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v8

    const/4 v9, 0x5

    aget-object v9, v13, v9

    invoke-virtual {v9}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/4 v9, 0x0

    aget-object v9, v13, v9

    invoke-virtual {v9}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v9

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/16 v12, 0xc8

    const/4 v14, 0x0

    const/16 v15, 0xdf

    const/16 v16, 0xfc

    move/from16 v0, v16

    invoke-static {v12, v14, v15, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/16 v12, 0x32

    const/4 v14, 0x0

    const/16 v15, 0xdf

    const/16 v16, 0xfc

    move/from16 v0, v16

    invoke-static {v12, v14, v15, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    aput v12, v10, v11

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/calmcar/adas/AdasDrawViewYL;->f:Landroid/graphics/Shader;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x0

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x0

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x1

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x1

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x2

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x2

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x3

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x3

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x4

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x4

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    const/4 v6, 0x5

    aget-object v6, v13, v6

    invoke-virtual {v6}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getX()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/calmcar/adas/AdasDrawViewYL;->a(D)F

    move-result v6

    const/4 v7, 0x5

    aget-object v7, v13, v7

    invoke-virtual {v7}, Lcom/calmcar/adas/apiserver/model/AdasPoint;->getY()D

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/calmcar/adas/AdasDrawViewYL;->b(D)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/calmcar/adas/AdasDrawViewYL;->g:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/calmcar/adas/AdasDrawViewYL;->c:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_a
    move v8, v5

    move v7, v6

    goto/16 :goto_1

    :cond_b
    move v8, v5

    move v7, v6

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public initScale(II)V
    .locals 3

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

    :cond_0
    int-to-float v0, p1

    sget v1, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->h:F

    int-to-float v0, p2

    sget v1, Lcom/calmcar/adas/apiserver/AdasConf;->IN_FRAME_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/calmcar/adas/AdasDrawViewYL;->i:F

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/calmcar/adas/AdasDrawViewYL;->initScale(II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/calmcar/adas/AdasDrawViewYL;->initScale(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
