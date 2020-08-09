.class public final enum Lcom/car/dvr/BaseCamera$StatusType;
.super Ljava/lang/Enum;
.source "BaseCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/BaseCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/car/dvr/BaseCamera$StatusType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/car/dvr/BaseCamera$StatusType;

.field public static final enum Current:Lcom/car/dvr/BaseCamera$StatusType;

.field public static final enum Expected:Lcom/car/dvr/BaseCamera$StatusType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/car/dvr/BaseCamera$StatusType;

    const-string v1, "Current"

    invoke-direct {v0, v1, v2}, Lcom/car/dvr/BaseCamera$StatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/dvr/BaseCamera$StatusType;->Current:Lcom/car/dvr/BaseCamera$StatusType;

    new-instance v0, Lcom/car/dvr/BaseCamera$StatusType;

    const-string v1, "Expected"

    invoke-direct {v0, v1, v3}, Lcom/car/dvr/BaseCamera$StatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/dvr/BaseCamera$StatusType;->Expected:Lcom/car/dvr/BaseCamera$StatusType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/car/dvr/BaseCamera$StatusType;

    sget-object v1, Lcom/car/dvr/BaseCamera$StatusType;->Current:Lcom/car/dvr/BaseCamera$StatusType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/car/dvr/BaseCamera$StatusType;->Expected:Lcom/car/dvr/BaseCamera$StatusType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/car/dvr/BaseCamera$StatusType;->$VALUES:[Lcom/car/dvr/BaseCamera$StatusType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/car/dvr/BaseCamera$StatusType;
    .locals 1

    const-class v0, Lcom/car/dvr/BaseCamera$StatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/BaseCamera$StatusType;

    return-object v0
.end method

.method public static values()[Lcom/car/dvr/BaseCamera$StatusType;
    .locals 1

    sget-object v0, Lcom/car/dvr/BaseCamera$StatusType;->$VALUES:[Lcom/car/dvr/BaseCamera$StatusType;

    invoke-virtual {v0}, [Lcom/car/dvr/BaseCamera$StatusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/car/dvr/BaseCamera$StatusType;

    return-object v0
.end method
