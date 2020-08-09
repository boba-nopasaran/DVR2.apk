.class final Lcom/calmcar/adas/a;
.super Ljava/lang/Object;
.source "CameraBridgeViewBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/calmcar/adas/CameraBridgeViewBase;->onEnterStartedState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/calmcar/adas/CameraBridgeViewBase;


# direct methods
.method private constructor <init>(Lcom/calmcar/adas/CameraBridgeViewBase;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/a;->a:Lcom/calmcar/adas/CameraBridgeViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/calmcar/adas/a;->a:Lcom/calmcar/adas/CameraBridgeViewBase;

    invoke-virtual {v0}, Lcom/calmcar/adas/CameraBridgeViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
