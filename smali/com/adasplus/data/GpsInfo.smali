.class public Lcom/adasplus/data/GpsInfo;
.super Ljava/lang/Object;
.source "GpsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/adasplus/data/GpsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private flag:I

.field private heading:F

.field private lat:F

.field private lon:F

.field private speed:F

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/adasplus/data/GpsInfo$1;

    invoke-direct {v0}, Lcom/adasplus/data/GpsInfo$1;-><init>()V

    sput-object v0, Lcom/adasplus/data/GpsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adasplus/data/GpsInfo;->flag:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adasplus/data/GpsInfo;->flag:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/GpsInfo;->flag:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adasplus/data/GpsInfo;->time:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/adasplus/data/GpsInfo;->lat:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/adasplus/data/GpsInfo;->lon:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/adasplus/data/GpsInfo;->speed:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/adasplus/data/GpsInfo;->heading:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFlag()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/GpsInfo;->flag:I

    return v0
.end method

.method public getHeading()F
    .locals 1

    iget v0, p0, Lcom/adasplus/data/GpsInfo;->heading:F

    return v0
.end method

.method public getLat()F
    .locals 1

    iget v0, p0, Lcom/adasplus/data/GpsInfo;->lat:F

    return v0
.end method

.method public getLon()F
    .locals 1

    iget v0, p0, Lcom/adasplus/data/GpsInfo;->lon:F

    return v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lcom/adasplus/data/GpsInfo;->speed:F

    return v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/adasplus/data/GpsInfo;->time:J

    return-wide v0
.end method

.method public setFlag(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/GpsInfo;->flag:I

    return-void
.end method

.method public setHeading(F)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/GpsInfo;->heading:F

    return-void
.end method

.method public setLat(F)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/GpsInfo;->lat:F

    return-void
.end method

.method public setLon(F)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/GpsInfo;->lon:F

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/GpsInfo;->speed:F

    return-void
.end method

.method public setTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/adasplus/data/GpsInfo;->time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GpsInfo{flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/GpsInfo;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/adasplus/data/GpsInfo;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/GpsInfo;->lat:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/GpsInfo;->lon:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/GpsInfo;->speed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/GpsInfo;->heading:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/adasplus/data/GpsInfo;->flag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/adasplus/data/GpsInfo;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/adasplus/data/GpsInfo;->lat:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/adasplus/data/GpsInfo;->lon:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/adasplus/data/GpsInfo;->speed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/adasplus/data/GpsInfo;->heading:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
