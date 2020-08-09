.class public final Lcom/car/dvr/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/dvr/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Extra:[I

.field public static final Extra_key:I = 0x0

.field public static final Extra_value:I = 0x1

.field public static final Favorite:[I

.field public static final Favorite_className:I = 0x0

.field public static final Favorite_container:I = 0x2

.field public static final Favorite_packageName:I = 0x1

.field public static final Favorite_ricon:I = 0x8

.field public static final Favorite_screen:I = 0x3

.field public static final Favorite_spanX:I = 0x6

.field public static final Favorite_spanY:I = 0x7

.field public static final Favorite_title:I = 0x9

.field public static final Favorite_uri:I = 0xa

.field public static final Favorite_x:I = 0x4

.field public static final Favorite_y:I = 0x5

.field public static final IconListPreference:[I

.field public static final IconListPreference_entryIcons:I = 0x0

.field public static final IconTextView:[I

.field public static final IconTextView_android_text:I = 0x0

.field public static final IconTextView_icon:I = 0x1

.field public static final PagerSlidingTabStrip:[I

.field public static final PagerSlidingTabStrip_pstsDividerColor:I = 0x2

.field public static final PagerSlidingTabStrip_pstsDividerPadding:I = 0x5

.field public static final PagerSlidingTabStrip_pstsIndicatorColor:I = 0x0

.field public static final PagerSlidingTabStrip_pstsIndicatorHeight:I = 0x3

.field public static final PagerSlidingTabStrip_pstsScrollOffset:I = 0x7

.field public static final PagerSlidingTabStrip_pstsShouldExpand:I = 0x9

.field public static final PagerSlidingTabStrip_pstsTabBackground:I = 0x8

.field public static final PagerSlidingTabStrip_pstsTabPaddingLeftRight:I = 0x6

.field public static final PagerSlidingTabStrip_pstsTextAllCaps:I = 0xa

.field public static final PagerSlidingTabStrip_pstsUnderlineColor:I = 0x1

.field public static final PagerSlidingTabStrip_pstsUnderlineHeight:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0xb

    const/4 v3, 0x2

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/car/dvr/R$styleable;->Extra:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/car/dvr/R$styleable;->Favorite:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f01000e

    aput v2, v0, v1

    sput-object v0, Lcom/car/dvr/R$styleable;->IconListPreference:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/car/dvr/R$styleable;->IconTextView:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/car/dvr/R$styleable;->PagerSlidingTabStrip:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f010001
        0x7f010002
    .end array-data

    :array_1
    .array-data 4
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
    .end array-data

    :array_2
    .array-data 4
        0x101014f
        0x7f010000
    .end array-data

    :array_3
    .array-data 4
        0x7f01000f
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
        0x7f010014
        0x7f010015
        0x7f010016
        0x7f010017
        0x7f010018
        0x7f010019
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
