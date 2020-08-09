.class public Lcom/adasplus/data/PedInfo;
.super Ljava/lang/Object;
.source "PedInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/adasplus/data/PedInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private perNum:I

.field private persons:[Lcom/adasplus/data/Person;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/adasplus/data/PedInfo$1;

    invoke-direct {v0}, Lcom/adasplus/data/PedInfo$1;-><init>()V

    sput-object v0, Lcom/adasplus/data/PedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/adasplus/data/Person;

    iput-object v0, p0, Lcom/adasplus/data/PedInfo;->persons:[Lcom/adasplus/data/Person;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/adasplus/data/Person;

    iput-object v0, p0, Lcom/adasplus/data/PedInfo;->persons:[Lcom/adasplus/data/Person;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/PedInfo;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/adasplus/data/PedInfo;->perNum:I

    sget-object v0, Lcom/adasplus/data/Person;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adasplus/data/Person;

    iput-object v0, p0, Lcom/adasplus/data/PedInfo;->persons:[Lcom/adasplus/data/Person;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCar()[Lcom/adasplus/data/Person;
    .locals 1

    iget-object v0, p0, Lcom/adasplus/data/PedInfo;->persons:[Lcom/adasplus/data/Person;

    return-object v0
.end method

.method public getPerNum()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/PedInfo;->perNum:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/adasplus/data/PedInfo;->state:I

    return v0
.end method

.method public setPerNum(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/PedInfo;->perNum:I

    return-void
.end method

.method public setPersons([Lcom/adasplus/data/Person;)V
    .locals 0

    iput-object p1, p0, Lcom/adasplus/data/PedInfo;->persons:[Lcom/adasplus/data/Person;

    return-void
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/adasplus/data/PedInfo;->state:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PedInfo{state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/PedInfo;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", perNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adasplus/data/PedInfo;->perNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", persons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adasplus/data/PedInfo;->persons:[Lcom/adasplus/data/Person;

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

    iget v0, p0, Lcom/adasplus/data/PedInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/adasplus/data/PedInfo;->perNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/adasplus/data/PedInfo;->persons:[Lcom/adasplus/data/Person;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
