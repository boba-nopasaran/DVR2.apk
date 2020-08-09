.class final Lcom/calmcar/b/b/a$2;
.super Ljava/lang/Object;
.source "CallBackUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/calmcar/b/b/a;->b(Lcom/calmcar/b/b/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/Object;

.field private synthetic b:Lcom/calmcar/b/b/a;


# direct methods
.method constructor <init>(Lcom/calmcar/b/b/a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/b/b/a$2;->b:Lcom/calmcar/b/b/a;

    iput-object p2, p0, Lcom/calmcar/b/b/a$2;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/calmcar/b/b/a$2;->b:Lcom/calmcar/b/b/a;

    iget-object v1, p0, Lcom/calmcar/b/b/a$2;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/calmcar/b/b/a;->a(Ljava/lang/Object;)V

    return-void
.end method
