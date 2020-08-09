.class final Lcom/calmcar/adas/MainActivityTwo$5;
.super Ljava/lang/Object;
.source "MainActivityTwo.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/calmcar/adas/MainActivityTwo;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/calmcar/adas/MainActivityTwo;


# direct methods
.method constructor <init>(Lcom/calmcar/adas/MainActivityTwo;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/MainActivityTwo$5;->a:Lcom/calmcar/adas/MainActivityTwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo$5;->a:Lcom/calmcar/adas/MainActivityTwo;

    invoke-static {v0}, Lcom/calmcar/adas/MainActivityTwo;->f(Lcom/calmcar/adas/MainActivityTwo;)Landroid/view/View;

    move-result-object v0

    const-string v1, "#0000FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo$5;->a:Lcom/calmcar/adas/MainActivityTwo;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/calmcar/adas/MainActivityTwo;->c(Lcom/calmcar/adas/MainActivityTwo;I)I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/calmcar/adas/MainActivityTwo$5;->a:Lcom/calmcar/adas/MainActivityTwo;

    invoke-static {v1}, Lcom/calmcar/adas/MainActivityTwo;->g(Lcom/calmcar/adas/MainActivityTwo;)I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/calmcar/adas/MainActivityTwo$5;->a:Lcom/calmcar/adas/MainActivityTwo;

    invoke-static {v4}, Lcom/calmcar/adas/MainActivityTwo;->h(Lcom/calmcar/adas/MainActivityTwo;)I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo$5;->a:Lcom/calmcar/adas/MainActivityTwo;

    invoke-static {v0}, Lcom/calmcar/adas/MainActivityTwo;->h(Lcom/calmcar/adas/MainActivityTwo;)I

    move-result v1

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo$5;->a:Lcom/calmcar/adas/MainActivityTwo;

    invoke-static {v0}, Lcom/calmcar/adas/MainActivityTwo;->h(Lcom/calmcar/adas/MainActivityTwo;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    :cond_0
    iget-object v4, p0, Lcom/calmcar/adas/MainActivityTwo$5;->a:Lcom/calmcar/adas/MainActivityTwo;

    invoke-static {v4}, Lcom/calmcar/adas/MainActivityTwo;->i(Lcom/calmcar/adas/MainActivityTwo;)I

    move-result v4

    if-le v0, v4, :cond_1

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo$5;->a:Lcom/calmcar/adas/MainActivityTwo;

    invoke-static {v0}, Lcom/calmcar/adas/MainActivityTwo;->i(Lcom/calmcar/adas/MainActivityTwo;)I

    move-result v0

    iget-object v1, p0, Lcom/calmcar/adas/MainActivityTwo$5;->a:Lcom/calmcar/adas/MainActivityTwo;

    invoke-static {v1}, Lcom/calmcar/adas/MainActivityTwo;->i(Lcom/calmcar/adas/MainActivityTwo;)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v1, v4

    :cond_1
    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo$5;->a:Lcom/calmcar/adas/MainActivityTwo;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/calmcar/adas/MainActivityTwo;->c(Lcom/calmcar/adas/MainActivityTwo;I)I

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo$5;->a:Lcom/calmcar/adas/MainActivityTwo;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-static {v0, v1}, Lcom/calmcar/adas/MainActivityTwo;->d(Lcom/calmcar/adas/MainActivityTwo;I)I

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo$5;->a:Lcom/calmcar/adas/MainActivityTwo;

    invoke-static {v0}, Lcom/calmcar/adas/MainActivityTwo;->f(Lcom/calmcar/adas/MainActivityTwo;)Landroid/view/View;

    move-result-object v0

    const-string v1, "#00FF00"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo$5;->a:Lcom/calmcar/adas/MainActivityTwo;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/calmcar/adas/MainActivityTwo;->c(Lcom/calmcar/adas/MainActivityTwo;I)I

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo$5;->a:Lcom/calmcar/adas/MainActivityTwo;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    invoke-static {v0, v1}, Lcom/calmcar/adas/MainActivityTwo;->d(Lcom/calmcar/adas/MainActivityTwo;I)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
