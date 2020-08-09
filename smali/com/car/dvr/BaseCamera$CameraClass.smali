.class public final enum Lcom/car/dvr/BaseCamera$CameraClass;
.super Ljava/lang/Enum;
.source "BaseCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/BaseCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/car/dvr/BaseCamera$CameraClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/car/dvr/BaseCamera$CameraClass;

.field public static final enum BuildIn:Lcom/car/dvr/BaseCamera$CameraClass;

.field public static final enum CVBS:Lcom/car/dvr/BaseCamera$CameraClass;

.field public static final enum USB:Lcom/car/dvr/BaseCamera$CameraClass;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/car/dvr/BaseCamera$CameraClass;

    const-string v1, "BuildIn"

    invoke-direct {v0, v1, v2}, Lcom/car/dvr/BaseCamera$CameraClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/dvr/BaseCamera$CameraClass;->BuildIn:Lcom/car/dvr/BaseCamera$CameraClass;

    new-instance v0, Lcom/car/dvr/BaseCamera$CameraClass;

    const-string v1, "USB"

    invoke-direct {v0, v1, v3}, Lcom/car/dvr/BaseCamera$CameraClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/dvr/BaseCamera$CameraClass;->USB:Lcom/car/dvr/BaseCamera$CameraClass;

    new-instance v0, Lcom/car/dvr/BaseCamera$CameraClass;

    const-string v1, "CVBS"

    invoke-direct {v0, v1, v4}, Lcom/car/dvr/BaseCamera$CameraClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/dvr/BaseCamera$CameraClass;->CVBS:Lcom/car/dvr/BaseCamera$CameraClass;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/car/dvr/BaseCamera$CameraClass;

    sget-object v1, Lcom/car/dvr/BaseCamera$CameraClass;->BuildIn:Lcom/car/dvr/BaseCamera$CameraClass;

    aput-object v1, v0, v2

    sget-object v1, Lcom/car/dvr/BaseCamera$CameraClass;->USB:Lcom/car/dvr/BaseCamera$CameraClass;

    aput-object v1, v0, v3

    sget-object v1, Lcom/car/dvr/BaseCamera$CameraClass;->CVBS:Lcom/car/dvr/BaseCamera$CameraClass;

    aput-object v1, v0, v4

    sput-object v0, Lcom/car/dvr/BaseCamera$CameraClass;->$VALUES:[Lcom/car/dvr/BaseCamera$CameraClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/car/dvr/BaseCamera$CameraClass;
    .locals 1

    const-class v0, Lcom/car/dvr/BaseCamera$CameraClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/BaseCamera$CameraClass;

    return-object v0
.end method

.method public static values()[Lcom/car/dvr/BaseCamera$CameraClass;
    .locals 1

    sget-object v0, Lcom/car/dvr/BaseCamera$CameraClass;->$VALUES:[Lcom/car/dvr/BaseCamera$CameraClass;

    invoke-virtual {v0}, [Lcom/car/dvr/BaseCamera$CameraClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/car/dvr/BaseCamera$CameraClass;

    return-object v0
.end method
