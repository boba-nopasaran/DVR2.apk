.class public Lcom/car/dvr/VerticalTextView;
.super Landroid/widget/TextView;
.source "VerticalTextView.java"


# static fields
.field public static final ORIENTATION_DOWN_TO_UP:I = 0x1

.field public static final ORIENTATION_LEFT_TO_RIGHT:I = 0x2

.field public static final ORIENTATION_RIGHT_TO_LEFT:I = 0x3

.field public static final ORIENTATION_UP_TO_DOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DVR.VerticalView"


# instance fields
.field private direction:I

.field text_bounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput v0, p0, Lcom/car/dvr/VerticalTextView;->direction:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/car/dvr/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput v0, p0, Lcom/car/dvr/VerticalTextView;->direction:I

    return-void
.end method

.method private measureHeight(I)I
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/car/dvr/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getPaddingRight()I

    move-result v4

    add-int v0, v3, v4

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/car/dvr/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iget v0, p0, Lcom/car/dvr/VerticalTextView;->direction:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v6, v0, 0x1

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v7, v0, 0x1

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v8, v0, 0x1

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    shr-int/lit8 v9, v0, 0x1

    int-to-float v0, v6

    int-to-float v1, v7

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v0, v8

    int-to-float v1, v9

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    :goto_0
    const-string v0, "DVR.VerticalView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dir="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/car/dvr/VerticalTextView;->direction:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", path="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    move-object v0, p1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget v0, p0, Lcom/car/dvr/VerticalTextView;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    shr-int/lit8 v6, v0, 0x1

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    shr-int/lit8 v7, v0, 0x1

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    shr-int/lit8 v8, v0, 0x1

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v9, v0, 0x1

    int-to-float v0, v6

    int-to-float v1, v7

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v0, v8

    int-to-float v1, v9

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Lcom/car/dvr/VerticalTextView;->direction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v6, v0, 0x1

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    shr-int/lit8 v7, v0, 0x1

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    shr-int/lit8 v8, v0, 0x1

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    shr-int/lit8 v9, v0, 0x1

    int-to-float v0, v6

    int-to-float v1, v7

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v0, v8

    int-to-float v1, v9

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/car/dvr/VerticalTextView;->direction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/2addr v0, v1

    shr-int/lit8 v6, v0, 0x1

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v7, v0, 0x1

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v8, v0, 0x1

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/car/dvr/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v9, v0, 0x1

    int-to-float v0, v6

    int-to-float v1, v7

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v0, v8

    int-to-float v1, v9

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v4, p0, Lcom/car/dvr/VerticalTextView;->text_bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v0, p0, Lcom/car/dvr/VerticalTextView;->direction:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/car/dvr/VerticalTextView;->direction:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/car/dvr/VerticalTextView;->measureHeight(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/car/dvr/VerticalTextView;->measureWidth(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/car/dvr/VerticalTextView;->setMeasuredDimension(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/car/dvr/VerticalTextView;->direction:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/car/dvr/VerticalTextView;->direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/car/dvr/VerticalTextView;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/car/dvr/VerticalTextView;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/car/dvr/VerticalTextView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setDirection(I)V
    .locals 0

    iput p1, p0, Lcom/car/dvr/VerticalTextView;->direction:I

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->requestLayout()V

    invoke-virtual {p0}, Lcom/car/dvr/VerticalTextView;->invalidate()V

    return-void
.end method
