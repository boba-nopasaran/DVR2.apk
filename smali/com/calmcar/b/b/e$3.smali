.class final Lcom/calmcar/b/b/e$3;
.super Ljava/lang/Object;
.source "RequestUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/calmcar/b/b/e;->a(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/calmcar/b/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/io/File;

.field private synthetic c:Ljava/util/List;

.field private synthetic d:Ljava/util/Map;

.field private synthetic e:Ljava/lang/String;

.field private synthetic f:Ljava/lang/String;

.field private synthetic g:Ljava/util/Map;

.field private synthetic h:Ljava/util/Map;

.field private synthetic i:Lcom/calmcar/b/b/a;

.field private synthetic j:Lcom/calmcar/b/b/e;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/calmcar/b/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/b/b/e$3;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/calmcar/b/b/e$3;->b:Ljava/io/File;

    iput-object p3, p0, Lcom/calmcar/b/b/e$3;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/calmcar/b/b/e$3;->d:Ljava/util/Map;

    iput-object p5, p0, Lcom/calmcar/b/b/e$3;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/calmcar/b/b/e$3;->g:Ljava/util/Map;

    iput-object p7, p0, Lcom/calmcar/b/b/e$3;->h:Ljava/util/Map;

    iput-object p8, p0, Lcom/calmcar/b/b/e$3;->i:Lcom/calmcar/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    new-instance v0, Lcom/calmcar/b/b/c;

    invoke-direct {v0}, Lcom/calmcar/b/b/c;-><init>()V

    iget-object v0, p0, Lcom/calmcar/b/b/e$3;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/calmcar/b/b/e$3;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/calmcar/b/b/e$3;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/calmcar/b/b/e$3;->d:Ljava/util/Map;

    iget-object v4, p0, Lcom/calmcar/b/b/e$3;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/calmcar/b/b/e$3;->g:Ljava/util/Map;

    iget-object v6, p0, Lcom/calmcar/b/b/e$3;->h:Ljava/util/Map;

    iget-object v7, p0, Lcom/calmcar/b/b/e$3;->i:Lcom/calmcar/b/b/a;

    invoke-static/range {v0 .. v7}, Lcom/calmcar/b/b/c;->a(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/calmcar/b/b/a;)Lcom/calmcar/b/b/d;

    move-result-object v0

    iget v1, v0, Lcom/calmcar/b/b/d;->c:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/calmcar/b/b/e$3;->i:Lcom/calmcar/b/b/a;

    invoke-virtual {v1, v0}, Lcom/calmcar/b/b/a;->b(Lcom/calmcar/b/b/d;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/calmcar/b/b/e$3;->i:Lcom/calmcar/b/b/a;

    invoke-virtual {v1, v0}, Lcom/calmcar/b/b/a;->a(Lcom/calmcar/b/b/d;)V

    goto :goto_0
.end method
