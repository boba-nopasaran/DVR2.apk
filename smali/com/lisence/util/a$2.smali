.class final Lcom/lisence/util/a$2;
.super Ljava/lang/Object;
.source "LisenceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lisence/util/a;->a()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/lisence/util/a;


# direct methods
.method constructor <init>(Lcom/lisence/util/a;)V
    .locals 0

    iput-object p1, p0, Lcom/lisence/util/a$2;->a:Lcom/lisence/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/lisence/util/a$2;->a:Lcom/lisence/util/a;

    invoke-static {v0}, Lcom/lisence/util/a;->a(Lcom/lisence/util/a;)V

    return-void
.end method
