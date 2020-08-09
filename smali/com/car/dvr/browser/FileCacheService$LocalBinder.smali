.class public Lcom/car/dvr/browser/FileCacheService$LocalBinder;
.super Landroid/os/Binder;
.source "FileCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/browser/FileCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/car/dvr/browser/FileCacheService;


# direct methods
.method public constructor <init>(Lcom/car/dvr/browser/FileCacheService;)V
    .locals 0

    iput-object p1, p0, Lcom/car/dvr/browser/FileCacheService$LocalBinder;->this$0:Lcom/car/dvr/browser/FileCacheService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/car/dvr/browser/FileCacheService;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/FileCacheService$LocalBinder;->this$0:Lcom/car/dvr/browser/FileCacheService;

    return-object v0
.end method
