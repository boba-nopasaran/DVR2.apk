.class public abstract Lcom/calmcar/b/b/a;
.super Ljava/lang/Object;
.source "CallBackUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/calmcar/b/b/a$c;,
        Lcom/calmcar/b/b/a$a;,
        Lcom/calmcar/b/b/a$d;,
        Lcom/calmcar/b/b/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/calmcar/b/b/a;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/calmcar/b/b/a;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()V
    .locals 0

    return-void
.end method

.method private static b(Ljava/io/InputStream;)[B
    .locals 5

    const/16 v4, 0x64

    const/4 v3, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v1, v4, [B

    :goto_0
    invoke-virtual {p0, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "utf-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public abstract a()V
.end method

.method final a(Lcom/calmcar/b/b/d;)V
    .locals 2

    iget-object v0, p1, Lcom/calmcar/b/b/d;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/calmcar/b/b/d;->a:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/calmcar/b/b/a;->c(Ljava/io/InputStream;)Ljava/lang/String;

    :cond_0
    :goto_0
    sget-object v0, Lcom/calmcar/b/b/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/calmcar/b/b/a$1;

    invoke-direct {v1, p0}, Lcom/calmcar/b/b/a$1;-><init>(Lcom/calmcar/b/b/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v0, p1, Lcom/calmcar/b/b/d;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/calmcar/b/b/d;->b:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/calmcar/b/b/a;->c(Ljava/io/InputStream;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/calmcar/b/b/d;->d:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/calmcar/b/b/d;->d:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method final b(Lcom/calmcar/b/b/d;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/calmcar/b/b/a;->c(Lcom/calmcar/b/b/d;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/calmcar/b/b/a;->a:Landroid/os/Handler;

    new-instance v2, Lcom/calmcar/b/b/a$2;

    invoke-direct {v2, p0, v0}, Lcom/calmcar/b/b/a$2;-><init>(Lcom/calmcar/b/b/a;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract c(Lcom/calmcar/b/b/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/calmcar/b/b/d;",
            ")TT;"
        }
    .end annotation
.end method
