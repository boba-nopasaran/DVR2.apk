.class final Lcom/calmcar/b/b/e$1;
.super Ljava/lang/Object;
.source "RequestUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/calmcar/b/b/e;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/calmcar/b/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/util/Map;

.field private synthetic c:Ljava/util/Map;

.field private synthetic d:Lcom/calmcar/b/b/a;

.field private synthetic e:Lcom/calmcar/b/b/e;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/calmcar/b/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/b/b/e$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/calmcar/b/b/e$1;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/calmcar/b/b/e$1;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/calmcar/b/b/e$1;->d:Lcom/calmcar/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    new-instance v0, Lcom/calmcar/b/b/c;

    invoke-direct {v0}, Lcom/calmcar/b/b/c;-><init>()V

    iget-object v0, p0, Lcom/calmcar/b/b/e$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/calmcar/b/b/e$1;->b:Ljava/util/Map;

    if-eqz v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/calmcar/b/b/e$1;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/calmcar/b/b/c;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/calmcar/b/b/d;

    move-result-object v0

    iget v1, v0, Lcom/calmcar/b/b/d;->c:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/calmcar/b/b/e$1;->d:Lcom/calmcar/b/b/a;

    invoke-virtual {v1, v0}, Lcom/calmcar/b/b/a;->b(Lcom/calmcar/b/b/d;)V

    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/calmcar/b/b/e$1;->d:Lcom/calmcar/b/b/a;

    invoke-virtual {v1, v0}, Lcom/calmcar/b/b/a;->a(Lcom/calmcar/b/b/d;)V

    goto :goto_1
.end method
