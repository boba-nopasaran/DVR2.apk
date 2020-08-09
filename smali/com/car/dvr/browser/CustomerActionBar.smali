.class public Lcom/car/dvr/browser/CustomerActionBar;
.super Ljava/lang/Object;
.source "CustomerActionBar.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DVR.Calendar"

.field public static final TAG_BACK:Ljava/lang/String; = "Bb"

.field public static final TAG_BIDO:Ljava/lang/String; = "Bd"

.field public static final TAG_DOUBLE:Ljava/lang/String; = "Dd"

.field public static final TAG_FRONT:Ljava/lang/String; = "Ff"

.field public static final TAG_LEFT:Ljava/lang/String; = "Ll"

.field public static final TAG_RIGHT:Ljava/lang/String; = "Rr"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActivity:Lcom/car/dvr/browser/FileBrowser;

.field private mBack:Landroid/widget/ImageButton;

.field private mRoot:Landroid/view/View;

.field private mSpinner:Landroid/widget/Spinner;

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>(Lcom/car/dvr/browser/FileBrowser;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/car/dvr/browser/CustomerActionBar;->mActivity:Lcom/car/dvr/browser/FileBrowser;

    iget-object v0, p0, Lcom/car/dvr/browser/CustomerActionBar;->mActivity:Lcom/car/dvr/browser/FileBrowser;

    invoke-virtual {v0}, Lcom/car/dvr/browser/FileBrowser;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/car/dvr/browser/CustomerActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-direct {p0}, Lcom/car/dvr/browser/CustomerActionBar;->initActionBar()V

    return-void
.end method

.method static synthetic access$000(Lcom/car/dvr/browser/CustomerActionBar;)Lcom/car/dvr/browser/FileBrowser;
    .locals 1

    iget-object v0, p0, Lcom/car/dvr/browser/CustomerActionBar;->mActivity:Lcom/car/dvr/browser/FileBrowser;

    return-object v0
.end method

.method private initActionBar()V
    .locals 14

    const v13, 0x7f0d0043

    const v12, 0x7f0d0042

    const v11, 0x7f0d0041

    const v10, 0x7f0d003f

    const/16 v9, 0x8

    iget-object v5, p0, Lcom/car/dvr/browser/CustomerActionBar;->mActionBar:Landroid/app/ActionBar;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v5, p0, Lcom/car/dvr/browser/CustomerActionBar;->mActionBar:Landroid/app/ActionBar;

    const v6, 0x7f030009

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setCustomView(I)V

    iget-object v5, p0, Lcom/car/dvr/browser/CustomerActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v5, 0x7f0d003d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/car/dvr/browser/CustomerActionBar;->mBack:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/car/dvr/browser/CustomerActionBar;->mBack:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/car/dvr/browser/CustomerActionBar;->mActivity:Lcom/car/dvr/browser/FileBrowser;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0d003e

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/car/dvr/browser/CustomerActionBar;->mSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/car/dvr/browser/CustomerActionBar;->mActivity:Lcom/car/dvr/browser/FileBrowser;

    const v6, 0x7f060011

    const v7, 0x1090008

    invoke-static {v5, v6, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v5, p0, Lcom/car/dvr/browser/CustomerActionBar;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v5, p0, Lcom/car/dvr/browser/CustomerActionBar;->mSpinner:Landroid/widget/Spinner;

    new-instance v6, Lcom/car/dvr/browser/CustomerActionBar$1;

    invoke-direct {v6, p0}, Lcom/car/dvr/browser/CustomerActionBar$1;-><init>(Lcom/car/dvr/browser/CustomerActionBar;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v5, 0x1020012

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TabHost;

    iput-object v5, p0, Lcom/car/dvr/browser/CustomerActionBar;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/car/dvr/browser/CustomerActionBar;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->setup()V

    iget-object v5, p0, Lcom/car/dvr/browser/CustomerActionBar;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    const v6, 0x7f070008

    invoke-virtual {v5, v6}, Landroid/widget/TabWidget;->setDividerDrawable(I)V

    iget-object v5, p0, Lcom/car/dvr/browser/CustomerActionBar;->mTabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Lcom/car/dvr/browser/CustomerActionBar;->mTabHost:Landroid/widget/TabHost;

    const-string v7, "Ff"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    iget-object v7, p0, Lcom/car/dvr/browser/CustomerActionBar;->mActivity:Lcom/car/dvr/browser/FileBrowser;

    const v8, 0x7f0a00ad

    invoke-virtual {v7, v8}, Lcom/car/dvr/browser/FileBrowser;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    const v7, 0x7f0d0040

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    const-string v5, "persist.rear.record.disable"

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    sget-boolean v5, Lcom/car/dvr/VideoInfo;->IS_LR_CAM_RECORD:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/car/dvr/browser/CustomerActionBar;->mTabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Lcom/car/dvr/browser/CustomerActionBar;->mTabHost:Landroid/widget/TabHost;

    const-string v7, "Ll"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    iget-object v7, p0, Lcom/car/dvr/browser/CustomerActionBar;->mActivity:Lcom/car/dvr/browser/FileBrowser;

    const v8, 0x7f0a00af

    invoke-virtual {v7, v8}, Lcom/car/dvr/browser/FileBrowser;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v5, p0, Lcom/car/dvr/browser/CustomerActionBar;->mTabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Lcom/car/dvr/browser/CustomerActionBar;->mTabHost:Landroid/widget/TabHost;

    const-string v7, "Rr"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    iget-object v7, p0, Lcom/car/dvr/browser/CustomerActionBar;->mActivity:Lcom/car/dvr/browser/FileBrowser;

    const v8, 0x7f0a00b0

    invoke-virtual {v7, v8}, Lcom/car/dvr/browser/FileBrowser;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    :goto_1
    iget-object v5, p0, Lcom/car/dvr/browser/CustomerActionBar;->mActivity:Lcom/car/dvr/browser/FileBrowser;

    invoke-static {v5}, Lcom/car/dvr/Util;->isBidoApkInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/car/dvr/browser/CustomerActionBar;->mTabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Lcom/car/dvr/browser/CustomerActionBar;->mTabHost:Landroid/widget/TabHost;

    const-string v7, "Bd"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    iget-object v7, p0, Lcom/car/dvr/browser/CustomerActionBar;->mActivity:Lcom/car/dvr/browser/FileBrowser;

    const v8, 0x7f0a00b1

    invoke-virtual {v7, v8}, Lcom/car/dvr/browser/FileBrowser;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    const v7, 0x7f0d0044

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    :goto_2
    iget-object v5, p0, Lcom/car/dvr/browser/CustomerActionBar;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v4}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v5

    if-ge v1, v5, :cond_4

    invoke-virtual {v4, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v5, v3, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/car/dvr/browser/CustomerActionBar;->mActivity:Lcom/car/dvr/browser/FileBrowser;

    invoke-virtual {v5}, Lcom/car/dvr/browser/FileBrowser;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080036

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    iget-object v5, p0, Lcom/car/dvr/browser/CustomerActionBar;->mTabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Lcom/car/dvr/browser/CustomerActionBar;->mTabHost:Landroid/widget/TabHost;

    const-string v7, "Dd"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    iget-object v7, p0, Lcom/car/dvr/browser/CustomerActionBar;->mActivity:Lcom/car/dvr/browser/FileBrowser;

    const v8, 0x7f0a00ac

    invoke-virtual {v7, v8}, Lcom/car/dvr/browser/FileBrowser;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v5, p0, Lcom/car/dvr/browser/CustomerActionBar;->mTabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Lcom/car/dvr/browser/CustomerActionBar;->mTabHost:Landroid/widget/TabHost;

    const-string v7, "Bb"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    iget-object v7, p0, Lcom/car/dvr/browser/CustomerActionBar;->mActivity:Lcom/car/dvr/browser/FileBrowser;

    const v8, 0x7f0a00ae

    invoke-virtual {v7, v8}, Lcom/car/dvr/browser/FileBrowser;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    const v5, 0x7f0d0044

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_4
    iget-object v5, p0, Lcom/car/dvr/browser/CustomerActionBar;->mTabHost:Landroid/widget/TabHost;

    new-instance v6, Lcom/car/dvr/browser/CustomerActionBar$2;

    invoke-direct {v6, p0}, Lcom/car/dvr/browser/CustomerActionBar$2;-><init>(Lcom/car/dvr/browser/CustomerActionBar;)V

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method
