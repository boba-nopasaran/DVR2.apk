.class public Lcom/adasplus/data/FcwInfo;
.super Ljava/lang/Object;
.source "FcwInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/adasplus/data/FcwInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private car:[Lcom/adasplus/data/CarInfo;

.field private carNum:I

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/adasplus/data/FcwInfo$1;

    invoke-direct {v0}, Lcom/adasplus/data/FcwInfo$1;-><init>()V

    sput-object v0, Lcom/adasplus/data/FcwInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/adasplus/data/CarInfo;

    iput-object v0, p0, Lcom/adasplus/data/FcwInfo;->car:[Lcom/adasplus/data/CarInfo;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/adasplus/data/CarInfo;

    iput-object v0, p0, Lcom/adasplus/data/FcwInfo;->car:[Lcom/adasplus/data/CarInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/FcwInfo;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/FcwInfo;->carNum:I

    sget-object v0, Lcom/adasplus/data/CarInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adasplus/data/CarInfo;

    iput-object v0, p0, Lcom/adasplus/data/FcwInfo;->car:[Lcom/adasplus/data/CarInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCar()[Lcom/adasplus/data/CarInfo;
    .locals 1

    iget-object v0, p0, Lcom/adasplus/data/FcwInfo;->car:[Lcom/adasplus/data/CarInfo;

    return-object v0
.end method

.method public getCarNum()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/FcwInfo;->carNum:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/FcwInfo;->state:I

    return v0
.end method

.method public setCar([Lcom/adasplus/data/CarInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/adasplus/data/FcwInfo;->car:[Lcom/adasplus/data/CarInfo;

    return-void
.end method

.method public setCarNum(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/FcwInfo;->carNum:I

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/FcwInfo;->state:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FcwInfo{state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/FcwInfo;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", carNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/FcwInfo;->carNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", car="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adasplus/data/FcwInfo;->car:[Lcom/adasplus/data/CarInfo;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget v0, p0, Lcom/adasplus/data/FcwInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/adasplus/data/FcwInfo;->carNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/adasplus/data/FcwInfo;->car:[Lcom/adasplus/data/CarInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
