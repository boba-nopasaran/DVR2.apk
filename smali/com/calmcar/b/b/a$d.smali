.class public abstract Lcom/calmcar/b/b/a$d;
.super Lcom/calmcar/b/b/a;
.source "CallBackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/calmcar/b/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/calmcar/b/b/a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/calmcar/b/b/a;-><init>()V

    return-void
.end method

.method private static d(Lcom/calmcar/b/b/d;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/calmcar/b/b/d;->a:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/calmcar/b/b/a;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failure"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final synthetic c(Lcom/calmcar/b/b/d;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lcom/calmcar/b/b/a$d;->d(Lcom/calmcar/b/b/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
