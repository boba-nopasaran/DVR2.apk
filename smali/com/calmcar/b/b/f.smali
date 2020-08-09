.class public final Lcom/calmcar/b/b/f;
.super Ljava/lang/Object;
.source "UrlHttpUtil.java"


# static fields
.field private static final a:Ljava/lang/String; = "GET"

.field private static final b:Ljava/lang/String; = "POST"

.field private static c:Ljava/lang/String; = "file/*"

.field private static d:Ljava/lang/String; = "image/*"

.field private static e:Ljava/lang/String; = "audio/*"

.field private static f:Ljava/lang/String; = "video/*"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/calmcar/b/b/a$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/calmcar/b/b/f;->b(Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/calmcar/b/b/a$c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/calmcar/b/b/f;->b(Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/calmcar/b/b/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/calmcar/b/b/f;->b(Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/calmcar/b/b/a;)V
    .locals 9

    const/4 v3, 0x0

    new-instance v0, Lcom/calmcar/b/b/e;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    move-object v6, p3

    move-object v7, v3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/calmcar/b/b/e;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V

    invoke-virtual {v0}, Lcom/calmcar/b/b/e;->a()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/calmcar/b/b/a;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/calmcar/b/b/e;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/calmcar/b/b/e;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V

    invoke-virtual {v0}, Lcom/calmcar/b/b/e;->a()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/calmcar/b/b/a;)V
    .locals 1

    new-instance v0, Lcom/calmcar/b/b/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/calmcar/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/calmcar/b/b/a;)V

    invoke-virtual {v0}, Lcom/calmcar/b/b/e;->a()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/calmcar/b/b/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/calmcar/b/b/a;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lcom/calmcar/b/b/e;

    move-object v1, p0

    move-object v3, p1

    move-object v4, v2

    move-object v5, p2

    move-object v6, p3

    move-object v7, v2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/calmcar/b/b/e;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V

    invoke-virtual {v0}, Lcom/calmcar/b/b/e;->a()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/calmcar/b/b/a;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lcom/calmcar/b/b/e;

    move-object v1, p0

    move-object v3, p1

    move-object v4, v2

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/calmcar/b/b/e;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V

    invoke-virtual {v0}, Lcom/calmcar/b/b/e;->a()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/calmcar/b/b/a$c;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/calmcar/b/b/f;->b(Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/calmcar/b/b/a;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/calmcar/b/b/f;->b(Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/calmcar/b/b/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/calmcar/b/b/a;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lcom/calmcar/b/b/e;

    move-object v1, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    move-object v6, p2

    move-object v7, v2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/calmcar/b/b/e;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V

    invoke-virtual {v0}, Lcom/calmcar/b/b/e;->a()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/calmcar/b/b/a;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lcom/calmcar/b/b/e;

    move-object v1, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/calmcar/b/b/e;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V

    invoke-virtual {v0}, Lcom/calmcar/b/b/e;->a()V

    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/calmcar/b/b/a$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/calmcar/b/b/a$a;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/calmcar/b/b/f;->b(Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/calmcar/b/b/a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/calmcar/b/b/a$c;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/calmcar/b/b/f;->b(Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Lcom/calmcar/b/b/a;)V
    .locals 3

    new-instance v0, Lcom/calmcar/b/b/e;

    const-string v1, "POST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/calmcar/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V

    invoke-virtual {v0}, Lcom/calmcar/b/b/e;->a()V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/calmcar/b/b/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/calmcar/b/b/a;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/calmcar/b/b/e;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    move-object v6, p3

    move-object v7, v3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/calmcar/b/b/e;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V

    invoke-virtual {v0}, Lcom/calmcar/b/b/e;->a()V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Lcom/calmcar/b/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/calmcar/b/b/a;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/calmcar/b/b/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/calmcar/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/calmcar/b/b/a;)V

    invoke-virtual {v0}, Lcom/calmcar/b/b/e;->a()V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/calmcar/b/b/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/calmcar/b/b/a;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lcom/calmcar/b/b/e;

    move-object v1, p0

    move-object v3, p1

    move-object v4, v2

    move-object v5, p2

    move-object v6, p3

    move-object v7, v2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/calmcar/b/b/e;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V

    invoke-virtual {v0}, Lcom/calmcar/b/b/e;->a()V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/calmcar/b/b/a;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/calmcar/b/b/e;

    const-string v1, "GET"

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/calmcar/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V

    invoke-virtual {v0}, Lcom/calmcar/b/b/e;->a()V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/calmcar/b/b/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/calmcar/b/b/a;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Lcom/calmcar/b/b/e;

    move-object v1, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    move-object v6, p2

    move-object v7, v2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/calmcar/b/b/e;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V

    invoke-virtual {v0}, Lcom/calmcar/b/b/e;->a()V

    return-void
.end method

.method private static c(Ljava/lang/String;Lcom/calmcar/b/b/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/calmcar/b/b/a;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/calmcar/b/b/e;

    const-string v1, "POST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/calmcar/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V

    invoke-virtual {v0}, Lcom/calmcar/b/b/e;->a()V

    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/calmcar/b/b/a;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/calmcar/b/b/e;

    const-string v1, "POST"

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/calmcar/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/calmcar/b/b/a;)V

    invoke-virtual {v0}, Lcom/calmcar/b/b/e;->a()V

    return-void
.end method
