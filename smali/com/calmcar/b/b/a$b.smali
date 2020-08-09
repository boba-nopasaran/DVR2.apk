.class public abstract Lcom/calmcar/b/b/a$b;
.super Lcom/calmcar/b/b/a;
.source "CallBackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/calmcar/b/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/calmcar/b/b/a",
        "<",
        "Lcom/calmcar/b/b/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/calmcar/b/b/a;-><init>()V

    return-void
.end method

.method private static d(Lcom/calmcar/b/b/d;)Lcom/calmcar/b/b/d;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic c(Lcom/calmcar/b/b/d;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method
