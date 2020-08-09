.class public Lcom/car/dvr/MyHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "MyHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/dvr/MyHorizontalScrollView$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DVR.MyHorizontalScrollView"


# instance fields
.field private mListener:Lcom/car/dvr/MyHorizontalScrollView$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/car/dvr/MyHorizontalScrollView;->mListener:Lcom/car/dvr/MyHorizontalScrollView$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/dvr/MyHorizontalScrollView;->mListener:Lcom/car/dvr/MyHorizontalScrollView$Listener;

    invoke-interface {v0, p0, p1}, Lcom/car/dvr/MyHorizontalScrollView$Listener;->onScrollChanged(Lcom/car/dvr/MyHorizontalScrollView;I)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/car/dvr/MyHorizontalScrollView$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/MyHorizontalScrollView;->mListener:Lcom/car/dvr/MyHorizontalScrollView$Listener;

    return-void
.end method
