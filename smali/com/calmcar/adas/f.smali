.class final Lcom/calmcar/adas/f;
.super Ljava/lang/Object;
.source "CameraDataProcess.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/calmcar/adas/CameraDataProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/calmcar/adas/CameraDataProcess;


# direct methods
.method private constructor <init>(Lcom/calmcar/adas/CameraDataProcess;)V
    .locals 0

    iput-object p1, p0, Lcom/calmcar/adas/f;->a:Lcom/calmcar/adas/CameraDataProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/calmcar/adas/f;->a:Lcom/calmcar/adas/CameraDataProcess;

    iput-object p2, v0, Lcom/calmcar/adas/CameraDataProcess;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/calmcar/adas/f;->a:Lcom/calmcar/adas/CameraDataProcess;

    iput-object v1, v0, Lcom/calmcar/adas/CameraDataProcess;->mBinder:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/calmcar/adas/f;->a:Lcom/calmcar/adas/CameraDataProcess;

    iput-object v1, v0, Lcom/calmcar/adas/CameraDataProcess;->memFi:Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/calmcar/adas/f;->a:Lcom/calmcar/adas/CameraDataProcess;

    iput-object v1, v0, Lcom/calmcar/adas/CameraDataProcess;->fileDescriptor:Ljava/io/FileDescriptor;

    return-void
.end method
