.class public Lcom/car/dvr/browser/FileGridView;
.super Landroid/widget/GridView;
.source "FileGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/dvr/browser/FileGridView$CheckForBlankAreaLongPress;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "DVR.FileGridView"


# instance fields
.field private mOnBlankAreaLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPendingCheckForBlankAreaLongPress:Lcom/car/dvr/browser/FileGridView$CheckForBlankAreaLongPress;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private postCheckForBlankAreaLongClick()V
    .locals 4

    iget-object v0, p0, Lcom/car/dvr/browser/FileGridView;->mPendingCheckForBlankAreaLongPress:Lcom/car/dvr/browser/FileGridView$CheckForBlankAreaLongPress;

    if-nez v0, :cond_0

    new-instance v0, Lcom/car/dvr/browser/FileGridView$CheckForBlankAreaLongPress;

    invoke-direct {v0, p0}, Lcom/car/dvr/browser/FileGridView$CheckForBlankAreaLongPress;-><init>(Lcom/car/dvr/browser/FileGridView;)V

    iput-object v0, p0, Lcom/car/dvr/browser/FileGridView;->mPendingCheckForBlankAreaLongPress:Lcom/car/dvr/browser/FileGridView$CheckForBlankAreaLongPress;

    :cond_0
    iget-object v0, p0, Lcom/car/dvr/browser/FileGridView;->mPendingCheckForBlankAreaLongPress:Lcom/car/dvr/browser/FileGridView$CheckForBlankAreaLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/car/dvr/browser/FileGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v4, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v5, v7

    const/4 v7, 0x2

    new-array v0, v7, [I

    invoke-virtual {p0}, Lcom/car/dvr/browser/FileGridView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/car/dvr/browser/FileGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v7, v0, v9

    if-lt v4, v7, :cond_1

    aget v7, v0, v9

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    if-ge v4, v7, :cond_1

    aget v7, v0, v6

    if-lt v5, v7, :cond_1

    aget v7, v0, v6

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    if-ge v5, v7, :cond_1

    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    :cond_0
    :goto_1
    return v6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v6, :cond_3

    invoke-virtual {p0}, Lcom/car/dvr/browser/FileGridView;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0, v9}, Lcom/car/dvr/browser/FileGridView;->setPressed(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p0, v6}, Lcom/car/dvr/browser/FileGridView;->setPressed(Z)V

    invoke-direct {p0}, Lcom/car/dvr/browser/FileGridView;->postCheckForBlankAreaLongClick()V

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_1
.end method

.method public performBlankAreaLongClick()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/car/dvr/browser/FileGridView;->mOnBlankAreaLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/car/dvr/browser/FileGridView;->mOnBlankAreaLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v1, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public setOnBlankAreaLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/car/dvr/browser/FileGridView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/car/dvr/browser/FileGridView;->setLongClickable(Z)V

    :cond_0
    iput-object p1, p0, Lcom/car/dvr/browser/FileGridView;->mOnBlankAreaLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method
