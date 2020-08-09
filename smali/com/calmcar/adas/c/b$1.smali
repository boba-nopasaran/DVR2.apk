.class final Lcom/calmcar/adas/c/b$1;
.super Ljava/lang/Object;
.source "LaneCarServerManager.java"

# interfaces
.implements Lcom/calmcar/adas/d/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/calmcar/adas/c/b;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/calmcar/adas/c/b;


# direct methods
.method constructor <init>(Lcom/calmcar/adas/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/c/b$1;->a:Lcom/calmcar/adas/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/calmcar/adas/c/b$1;->a:Lcom/calmcar/adas/c/b;

    iget-object v0, v0, Lcom/calmcar/adas/c/b;->c:Lcom/calmcar/adas/b/a;

    invoke-virtual {v0, p1}, Lcom/calmcar/adas/b/a;->a(Lcom/calmcar/adas/apiserver/out/CvCameraViewFrame;)Lcom/calmcar/adas/dao/DetectDataInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/calmcar/adas/c/b$1;->a:Lcom/calmcar/adas/c/b;

    iput-object v0, v1, Lcom/calmcar/adas/c/b;->d:Lcom/calmcar/adas/dao/DetectDataInfo;

    iget-object v0, p0, Lcom/calmcar/adas/c/b$1;->a:Lcom/calmcar/adas/c/b;

    iget-object v0, v0, Lcom/calmcar/adas/c/b;->d:Lcom/calmcar/adas/dao/DetectDataInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/adas/c/b$1;->a:Lcom/calmcar/adas/c/b;

    iget-object v0, v0, Lcom/calmcar/adas/c/b;->b:Lcom/calmcar/adas/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/calmcar/adas/c/a;->a(Lcom/calmcar/adas/dao/CalmCarDetectData;I)V

    iget-object v0, p0, Lcom/calmcar/adas/c/b$1;->a:Lcom/calmcar/adas/c/b;

    iget-object v0, v0, Lcom/calmcar/adas/c/b;->a:Lcom/calmcar/adas/c/d;

    invoke-virtual {v0, v2}, Lcom/calmcar/adas/c/d;->a(Lcom/calmcar/adas/dao/CalmCarLdwData;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/calmcar/adas/c/b$1;->a:Lcom/calmcar/adas/c/b;

    iget-object v0, v0, Lcom/calmcar/adas/c/b;->b:Lcom/calmcar/adas/c/a;

    iget-object v1, p0, Lcom/calmcar/adas/c/b$1;->a:Lcom/calmcar/adas/c/b;

    iget-object v1, v1, Lcom/calmcar/adas/c/b;->d:Lcom/calmcar/adas/dao/DetectDataInfo;

    invoke-virtual {v1}, Lcom/calmcar/adas/dao/DetectDataInfo;->getCarData()Lcom/calmcar/adas/dao/CalmCarDetectData;

    move-result-object v1

    iget-object v2, p0, Lcom/calmcar/adas/c/b$1;->a:Lcom/calmcar/adas/c/b;

    iget-object v2, v2, Lcom/calmcar/adas/c/b;->d:Lcom/calmcar/adas/dao/DetectDataInfo;

    invoke-virtual {v2}, Lcom/calmcar/adas/dao/DetectDataInfo;->getCarType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/calmcar/adas/c/a;->a(Lcom/calmcar/adas/dao/CalmCarDetectData;I)V

    iget-object v0, p0, Lcom/calmcar/adas/c/b$1;->a:Lcom/calmcar/adas/c/b;

    iget-object v0, v0, Lcom/calmcar/adas/c/b;->a:Lcom/calmcar/adas/c/d;

    iget-object v1, p0, Lcom/calmcar/adas/c/b$1;->a:Lcom/calmcar/adas/c/b;

    iget-object v1, v1, Lcom/calmcar/adas/c/b;->d:Lcom/calmcar/adas/dao/DetectDataInfo;

    invoke-virtual {v1}, Lcom/calmcar/adas/dao/DetectDataInfo;->getLaneData()Lcom/calmcar/adas/dao/CalmCarLdwData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/calmcar/adas/c/d;->a(Lcom/calmcar/adas/dao/CalmCarLdwData;)V

    goto :goto_0
.end method
