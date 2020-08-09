.class final Lcom/calmcar/b/b/e$2;
.super Ljava/lang/Object;
.source "RequestUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/calmcar/b/b/e;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/calmcar/b/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/util/Map;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/util/Map;

.field private synthetic e:Lcom/calmcar/b/b/a;

.field private synthetic f:Lcom/calmcar/b/b/e;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V
    .locals 1

    iput-object p1, p0, Lcom/calmcar/b/b/e$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/calmcar/b/b/e$2;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/calmcar/b/b/e$2;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/calmcar/b/b/e$2;->d:Ljava/util/Map;

    iput-object p5, p0, Lcom/calmcar/b/b/e$2;->e:Lcom/calmcar/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Lcom/calmcar/b/b/c;

    invoke-direct {v0}, Lcom/calmcar/b/b/c;-><init>()V

    iget-object v1, p0, Lcom/calmcar/b/b/e$2;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/calmcar/b/b/e$2;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/calmcar/b/b/e$2;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/calmcar/b/b/e;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/calmcar/b/b/e$2;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/calmcar/b/b/e$2;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/json;charset=utf-8"

    :goto_0
    iget-object v3, p0, Lcom/calmcar/b/b/e$2;->d:Ljava/util/Map;

    invoke-static {v1, v2, v0, v3}, Lcom/calmcar/b/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/calmcar/b/b/d;

    move-result-object v0

    iget v1, v0, Lcom/calmcar/b/b/d;->c:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/calmcar/b/b/e$2;->e:Lcom/calmcar/b/b/a;

    invoke-virtual {v1, v0}, Lcom/calmcar/b/b/a;->b(Lcom/calmcar/b/b/d;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/calmcar/b/b/e$2;->e:Lcom/calmcar/b/b/a;

    invoke-virtual {v1, v0}, Lcom/calmcar/b/b/a;->a(Lcom/calmcar/b/b/d;)V

    goto :goto_1
.end method
