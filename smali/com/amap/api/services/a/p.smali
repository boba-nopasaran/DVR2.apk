.class Lcom/amap/api/services/a/p;
.super Ljava/lang/Object;
.source "ManifestResult.java"


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/amap/api/services/a/p;->a:Z

    iput-boolean v0, p0, Lcom/amap/api/services/a/p;->b:Z

    iput-boolean p1, p0, Lcom/amap/api/services/a/p;->a:Z

    iput-boolean p2, p0, Lcom/amap/api/services/a/p;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/services/a/p;->b:Z

    return v0
.end method
