.class final Lcom/calmcar/a/b$1;
.super Ljava/lang/Object;
.source "DataWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/calmcar/a/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/calmcar/a/b;


# direct methods
.method constructor <init>(Lcom/calmcar/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/a/b$1;->a:Lcom/calmcar/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget-boolean v0, Lcom/calmcar/dms/b;->e:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/calmcar/dms/b;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/calmcar/a/b$1;->a:Lcom/calmcar/a/b;

    invoke-static {v0}, Lcom/calmcar/a/b;->a(Lcom/calmcar/a/b;)Lcom/calmcar/a/d;

    move-result-object v0

    const-string v1, "0"

    iput-object v1, v0, Lcom/calmcar/a/d;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/calmcar/a/b$1;->a:Lcom/calmcar/a/b;

    iget-object v1, p0, Lcom/calmcar/a/b$1;->a:Lcom/calmcar/a/b;

    invoke-static {v1}, Lcom/calmcar/a/b;->a(Lcom/calmcar/a/b;)Lcom/calmcar/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/calmcar/a/b;->a(Lcom/calmcar/a/d;)V

    :cond_0
    return-void
.end method
