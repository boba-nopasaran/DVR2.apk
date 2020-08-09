.class final Lcom/calmcar/adas/MainActivityTwo$1;
.super Ljava/lang/Object;
.source "MainActivityTwo.java"

# interfaces
.implements Lcom/calmcar/adas/apiserver/out/DetectInitSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/calmcar/adas/MainActivityTwo;->b()V
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

    iput-object p1, p0, Lcom/calmcar/adas/MainActivityTwo$1;->a:Lcom/calmcar/adas/MainActivityTwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/MainActivityTwo$1;->a:Lcom/calmcar/adas/MainActivityTwo;

    invoke-static {v0}, Lcom/calmcar/adas/MainActivityTwo;->a(Lcom/calmcar/adas/MainActivityTwo;)Lcom/calmcar/adas/CameraBridgeViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/calmcar/adas/CameraBridgeViewBase;->enableView()V

    return-void
.end method
