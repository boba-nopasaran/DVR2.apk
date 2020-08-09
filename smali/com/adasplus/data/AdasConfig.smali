.class public Lcom/adasplus/data/AdasConfig;
.super Ljava/lang/Object;
.source "AdasConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/adasplus/data/AdasConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dfwMinVelocity:I

.field private dfwSensitivity:I

.field private fcwMinVelocity:I

.field private fcwSensitivity:I

.field private isCalibCredible:I

.field private isDfwEnable:I

.field private isFcwEnable:I

.field private isLdwEnable:I

.field private isPedEnable:I

.field private isStopgoEnable:I

.field private ldwMinVelocity:I

.field private ldwSensitivity:I

.field private pedMinVelocity:I

.field private pedSensitivity:I

.field private vehicleHeight:F

.field private vehicleWidth:F

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/adasplus/data/AdasConfig$1;

    invoke-direct {v0}, Lcom/adasplus/data/AdasConfig$1;-><init>()V

    sput-object v0, Lcom/adasplus/data/AdasConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/AdasConfig;->isCalibCredible:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/adasplus/data/AdasConfig;->x:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/adasplus/data/AdasConfig;->y:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/adasplus/data/AdasConfig;->vehicleHeight:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/adasplus/data/AdasConfig;->vehicleWidth:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/AdasConfig;->ldwSensitivity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/AdasConfig;->fcwSensitivity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/AdasConfig;->pedSensitivity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/AdasConfig;->dfwSensitivity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/AdasConfig;->ldwMinVelocity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/AdasConfig;->fcwMinVelocity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/AdasConfig;->pedMinVelocity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/AdasConfig;->dfwMinVelocity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/AdasConfig;->isLdwEnable:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/AdasConfig;->isFcwEnable:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/AdasConfig;->isStopgoEnable:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/AdasConfig;->isPedEnable:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/AdasConfig;->isDfwEnable:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDfwMinVelocity()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->dfwMinVelocity:I

    return v0
.end method

.method public getDfwSensitivity()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->dfwSensitivity:I

    return v0
.end method

.method public getFcwMinVelocity()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->fcwMinVelocity:I

    return v0
.end method

.method public getFcwSensitivity()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->fcwSensitivity:I

    return v0
.end method

.method public getIsCalibCredible()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->isCalibCredible:I

    return v0
.end method

.method public getIsDfwEnable()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->isDfwEnable:I

    return v0
.end method

.method public getIsFcwEnable()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->isFcwEnable:I

    return v0
.end method

.method public getIsLdwEnable()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->isLdwEnable:I

    return v0
.end method

.method public getIsPedEnable()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->isPedEnable:I

    return v0
.end method

.method public getIsStopgoEnable()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->isStopgoEnable:I

    return v0
.end method

.method public getLdwMinVelocity()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->ldwMinVelocity:I

    return v0
.end method

.method public getLdwSensitivity()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->ldwSensitivity:I

    return v0
.end method

.method public getPedMinVelocity()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->pedMinVelocity:I

    return v0
.end method

.method public getPedSensitivity()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->pedSensitivity:I

    return v0
.end method

.method public getVehicleHeight()F
    .locals 1

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->vehicleHeight:F

    return v0
.end method

.method public getVehicleWidth()F
    .locals 1

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->vehicleWidth:F

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->y:F

    return v0
.end method

.method public setDfwMinVelocity(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/AdasConfig;->dfwMinVelocity:I

    return-void
.end method

.method public setDfwSensitivity(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/AdasConfig;->dfwSensitivity:I

    return-void
.end method

.method public setFcwMinVelocity(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/AdasConfig;->fcwMinVelocity:I

    return-void
.end method

.method public setFcwSensitivity(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/AdasConfig;->fcwSensitivity:I

    return-void
.end method

.method public setIsCalibCredible(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/AdasConfig;->isCalibCredible:I

    return-void
.end method

.method public setIsDfwEnable(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/AdasConfig;->isDfwEnable:I

    return-void
.end method

.method public setIsFcwEnable(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/AdasConfig;->isFcwEnable:I

    return-void
.end method

.method public setIsLdwEnable(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/AdasConfig;->isLdwEnable:I

    return-void
.end method

.method public setIsPedEnable(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/AdasConfig;->isPedEnable:I

    return-void
.end method

.method public setIsStopgoEnable(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/AdasConfig;->isStopgoEnable:I

    return-void
.end method

.method public setLdwMinVelocity(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/AdasConfig;->ldwMinVelocity:I

    return-void
.end method

.method public setLdwSensitivity(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/AdasConfig;->ldwSensitivity:I

    return-void
.end method

.method public setPedMinVelocity(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/AdasConfig;->pedMinVelocity:I

    return-void
.end method

.method public setPedSensitivity(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/AdasConfig;->pedSensitivity:I

    return-void
.end method

.method public setVehicleHeight(F)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/AdasConfig;->vehicleHeight:F

    return-void
.end method

.method public setVehicleWidth(F)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/AdasConfig;->vehicleWidth:F

    return-void
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/AdasConfig;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/AdasConfig;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdasConfig{isCalibCredible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/AdasConfig;->isCalibCredible:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/AdasConfig;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/AdasConfig;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vehicleHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/AdasConfig;->vehicleHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vehicleWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/AdasConfig;->vehicleWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ldwSensitivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/AdasConfig;->ldwSensitivity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fcwSensitivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/AdasConfig;->fcwSensitivity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pedSensitivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/AdasConfig;->pedSensitivity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dfwSensitivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/AdasConfig;->dfwSensitivity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ldwMinVelocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/AdasConfig;->ldwMinVelocity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fcwMinVelocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/AdasConfig;->fcwMinVelocity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pedMinVelocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/AdasConfig;->pedMinVelocity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dfwMinVelocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/AdasConfig;->dfwMinVelocity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLdwEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/AdasConfig;->isLdwEnable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFcwEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/AdasConfig;->isFcwEnable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isStopgoEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/AdasConfig;->isStopgoEnable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPedEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/AdasConfig;->isPedEnable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDfwEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/AdasConfig;->isDfwEnable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->isCalibCredible:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->x:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->y:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->vehicleHeight:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->vehicleWidth:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->ldwSensitivity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->fcwSensitivity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->pedSensitivity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->dfwSensitivity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->ldwMinVelocity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->fcwMinVelocity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->pedMinVelocity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->dfwMinVelocity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->isLdwEnable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->isFcwEnable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->isStopgoEnable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->isPedEnable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/adasplus/data/AdasConfig;->isDfwEnable:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
