.class final enum Lcom/car/dvr/BaseCamera$ActionStatus;
.super Ljava/lang/Enum;
.source "BaseCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/BaseCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ActionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/car/dvr/BaseCamera$ActionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/car/dvr/BaseCamera$ActionStatus;

.field public static final enum Done:Lcom/car/dvr/BaseCamera$ActionStatus;

.field public static final enum NotRun:Lcom/car/dvr/BaseCamera$ActionStatus;

.field public static final enum Running:Lcom/car/dvr/BaseCamera$ActionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/car/dvr/BaseCamera$ActionStatus;

    const-string v1, "NotRun"

    invoke-direct {v0, v1, v2}, Lcom/car/dvr/BaseCamera$ActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/dvr/BaseCamera$ActionStatus;->NotRun:Lcom/car/dvr/BaseCamera$ActionStatus;

    new-instance v0, Lcom/car/dvr/BaseCamera$ActionStatus;

    const-string v1, "Running"

    invoke-direct {v0, v1, v3}, Lcom/car/dvr/BaseCamera$ActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/dvr/BaseCamera$ActionStatus;->Running:Lcom/car/dvr/BaseCamera$ActionStatus;

    new-instance v0, Lcom/car/dvr/BaseCamera$ActionStatus;

    const-string v1, "Done"

    invoke-direct {v0, v1, v4}, Lcom/car/dvr/BaseCamera$ActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/car/dvr/BaseCamera$ActionStatus;->Done:Lcom/car/dvr/BaseCamera$ActionStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/car/dvr/BaseCamera$ActionStatus;

    sget-object v1, Lcom/car/dvr/BaseCamera$ActionStatus;->NotRun:Lcom/car/dvr/BaseCamera$ActionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/car/dvr/BaseCamera$ActionStatus;->Running:Lcom/car/dvr/BaseCamera$ActionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/car/dvr/BaseCamera$ActionStatus;->Done:Lcom/car/dvr/BaseCamera$ActionStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/car/dvr/BaseCamera$ActionStatus;->$VALUES:[Lcom/car/dvr/BaseCamera$ActionStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/car/dvr/BaseCamera$ActionStatus;
    .locals 1

    const-class v0, Lcom/car/dvr/BaseCamera$ActionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/car/dvr/BaseCamera$ActionStatus;

    return-object v0
.end method

.method public static values()[Lcom/car/dvr/BaseCamera$ActionStatus;
    .locals 1

    sget-object v0, Lcom/car/dvr/BaseCamera$ActionStatus;->$VALUES:[Lcom/car/dvr/BaseCamera$ActionStatus;

    invoke-virtual {v0}, [Lcom/car/dvr/BaseCamera$ActionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/car/dvr/BaseCamera$ActionStatus;

    return-object v0
.end method
