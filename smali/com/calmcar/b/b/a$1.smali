.class final Lcom/calmcar/b/b/a$1;
.super Ljava/lang/Object;
.source "CallBackUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/calmcar/b/b/a;->a(Lcom/calmcar/b/b/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/calmcar/b/b/d;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/calmcar/b/b/a;


# direct methods
.method constructor <init>(Lcom/calmcar/b/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/b/b/a$1;->c:Lcom/calmcar/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/calmcar/b/b/a$1;->c:Lcom/calmcar/b/b/a;

    invoke-virtual {v0}, Lcom/calmcar/b/b/a;->a()V

    return-void
.end method
