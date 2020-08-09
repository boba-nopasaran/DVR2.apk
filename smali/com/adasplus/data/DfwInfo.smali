.class public Lcom/adasplus/data/DfwInfo;
.super Ljava/lang/Object;
.source "DfwInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/adasplus/data/DfwInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private face:Lcom/adasplus/data/RectInt;

.field private keyPoint:[Landroid/graphics/Point;

.field private pitch:F

.field private roll:F

.field private state:I

.field private state1:I

.field private state2:I

.field private state3:I

.field private yaw:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/adasplus/data/DfwInfo$1;

    invoke-direct {v0}, Lcom/adasplus/data/DfwInfo$1;-><init>()V

    sput-object v0, Lcom/adasplus/data/DfwInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    new-array v0, v0, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/adasplus/data/DfwInfo;->keyPoint:[Landroid/graphics/Point;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    new-array v0, v0, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/adasplus/data/DfwInfo;->keyPoint:[Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/DfwInfo;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/DfwInfo;->state1:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/DfwInfo;->state2:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/DfwInfo;->state3:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/adasplus/data/DfwInfo;->yaw:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/adasplus/data/DfwInfo;->pitch:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/adasplus/data/DfwInfo;->roll:F

    const-class v0, Lcom/adasplus/data/RectInt;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/adasplus/data/RectInt;

    iput-object v0, p0, Lcom/adasplus/data/DfwInfo;->face:Lcom/adasplus/data/RectInt;

    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/adasplus/data/DfwInfo;->keyPoint:[Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFace()Lcom/adasplus/data/RectInt;
    .locals 1

    iget-object v0, p0, Lcom/adasplus/data/DfwInfo;->face:Lcom/adasplus/data/RectInt;

    return-object v0
.end method

.method public getKeyPoint()[Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/adasplus/data/DfwInfo;->keyPoint:[Landroid/graphics/Point;

    return-object v0
.end method

.method public getPitch()F
    .locals 1

    iget v0, p0, Lcom/adasplus/data/DfwInfo;->pitch:F

    return v0
.end method

.method public getRoll()F
    .locals 1

    iget v0, p0, Lcom/adasplus/data/DfwInfo;->roll:F

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/DfwInfo;->state:I

    return v0
.end method

.method public getState1()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/DfwInfo;->state1:I

    return v0
.end method

.method public getState2()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/DfwInfo;->state2:I

    return v0
.end method

.method public getState3()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/DfwInfo;->state3:I

    return v0
.end method

.method public getYaw()F
    .locals 1

    iget v0, p0, Lcom/adasplus/data/DfwInfo;->yaw:F

    return v0
.end method

.method public setFace(Lcom/adasplus/data/RectInt;)V
    .locals 0

    iput-object p1, p0, Lcom/adasplus/data/DfwInfo;->face:Lcom/adasplus/data/RectInt;

    return-void
.end method

.method public setKeyPoint([Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/adasplus/data/DfwInfo;->keyPoint:[Landroid/graphics/Point;

    return-void
.end method

.method public setPitch(F)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/DfwInfo;->pitch:F

    return-void
.end method

.method public setRoll(F)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/DfwInfo;->roll:F

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/DfwInfo;->state:I

    return-void
.end method

.method public setState1(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/DfwInfo;->state1:I

    return-void
.end method

.method public setState2(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/DfwInfo;->state2:I

    return-void
.end method

.method public setState3(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/DfwInfo;->state3:I

    return-void
.end method

.method public setYaw(F)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/DfwInfo;->yaw:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DfwInfo{state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/DfwInfo;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/DfwInfo;->state1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/DfwInfo;->state2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/DfwInfo;->state3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/DfwInfo;->yaw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/DfwInfo;->pitch:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/DfwInfo;->roll:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", face="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adasplus/data/DfwInfo;->face:Lcom/adasplus/data/RectInt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adasplus/data/DfwInfo;->keyPoint:[Landroid/graphics/Point;

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

    iget v0, p0, Lcom/adasplus/data/DfwInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/adasplus/data/DfwInfo;->state1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/adasplus/data/DfwInfo;->state2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/adasplus/data/DfwInfo;->state3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/adasplus/data/DfwInfo;->yaw:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/adasplus/data/DfwInfo;->pitch:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/adasplus/data/DfwInfo;->roll:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/adasplus/data/DfwInfo;->face:Lcom/adasplus/data/RectInt;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/adasplus/data/DfwInfo;->keyPoint:[Landroid/graphics/Point;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
