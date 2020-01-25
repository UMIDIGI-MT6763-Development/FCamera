.class public Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;
.super Ljava/lang/Object;
.source "MatrixDisplayViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyOnItemClickListener;,
        Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyOnScrollListener;,
        Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$LomoSurfaceTextureListener;,
        Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;,
        Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ItemClickListener;,
        Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$EffectUpdateListener;,
        Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$SurfaceAvailableListener;,
        Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ViewStateCallback;
    }
.end annotation


# static fields
.field private static final EFFECT_NUM_OF_PAGE:I = 0xc

.field private static final GRIDVIEW_STEP:I = 0xc

.field private static final MSG_DELAY_ROTATE:I = 0x1

.field private static final MSG_DISPLAY:I = 0x2

.field private static final MSG_REMOVE_GRID:I = 0x0

.field private static final MTK_CONTROL_EFFECT_MODE_AQUA:Ljava/lang/String; = "aqua"

.field private static final MTK_CONTROL_EFFECT_MODE_BLACKBOARD:Ljava/lang/String; = "blackboard"

.field private static final MTK_CONTROL_EFFECT_MODE_F1977:Ljava/lang/String; = "f1977"

.field private static final MTK_CONTROL_EFFECT_MODE_HEFE:Ljava/lang/String; = "hefe"

.field private static final MTK_CONTROL_EFFECT_MODE_KELVIN:Ljava/lang/String; = "kelvin"

.field private static final MTK_CONTROL_EFFECT_MODE_LOFI:Ljava/lang/String; = "lofi"

.field private static final MTK_CONTROL_EFFECT_MODE_MONO:Ljava/lang/String; = "mono"

.field private static final MTK_CONTROL_EFFECT_MODE_NASHVILLE:Ljava/lang/String; = "nashville"

.field private static final MTK_CONTROL_EFFECT_MODE_NEGATIVE:Ljava/lang/String; = "negative"

.field private static final MTK_CONTROL_EFFECT_MODE_NUM:Ljava/lang/String; = "num"

.field private static final MTK_CONTROL_EFFECT_MODE_OFF:Ljava/lang/String; = "none"

.field private static final MTK_CONTROL_EFFECT_MODE_POSTERIZE:Ljava/lang/String; = "posterize"

.field private static final MTK_CONTROL_EFFECT_MODE_SEPIA:Ljava/lang/String; = "sepia"

.field private static final MTK_CONTROL_EFFECT_MODE_SEPIABLUE:Ljava/lang/String; = "sepiablue"

.field private static final MTK_CONTROL_EFFECT_MODE_SEPIAGREEN:Ljava/lang/String; = "sepiagreen"

.field private static final MTK_CONTROL_EFFECT_MODE_SIERRA:Ljava/lang/String; = "sierra"

.field private static final MTK_CONTROL_EFFECT_MODE_SOLARIZE:Ljava/lang/String; = "solarize"

.field private static final MTK_CONTROL_EFFECT_MODE_VALENCIA:Ljava/lang/String; = "valencia"

.field private static final MTK_CONTROL_EFFECT_MODE_WALDEN:Ljava/lang/String; = "walden"

.field private static final MTK_CONTROL_EFFECT_MODE_WHITEBOARD:Ljava/lang/String; = "whiteboard"

.field private static final MTK_CONTROL_EFFECT_MODE_XPROII:Ljava/lang/String; = "xproll"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final TIME_DELAY_SHOW_DISPLAY_LAYOUT_MS:I = 0x1f4

.field private static final mEffectName:[Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;

.field private mDisplayHeight:I

.field private mDisplayOrientation:I

.field private mDisplayWidth:I

.field private mEffectEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectUpdateListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$EffectUpdateListener;

.field private mEffectsDone:Z

.field private mEffectsLayout:Landroid/view/ViewGroup;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mGridView:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

.field private mItemClickListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ItemClickListener;

.field private mMainHandler:Landroid/os/Handler;

.field private mMirror:Z

.field private mNeedScrollToFirstPosition:Z

.field private mNumsOfEffect:I

.field private mOrientation:I

.field private mSelectedPosition:I

.field private mShowEffects:Z

.field private mSizeChanged:Z

.field private mSurfaceAvailableListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$SurfaceAvailableListener;

.field private mSurfaceList:[Landroid/view/Surface;

.field private mViewStateCallback:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ViewStateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "none"

    const-string v3, "mono"

    const-string v4, "negative"

    const-string v5, "solarize"

    const-string v6, "sepia"

    const-string v7, "posterize"

    const-string v8, "whiteboard"

    const-string v9, "blackboard"

    const-string v10, "aqua"

    const-string v11, "sepiagreen"

    const-string v12, "sepiablue"

    const-string v13, "nashville"

    const-string v14, "hefe"

    const-string v15, "valencia"

    const-string v16, "xproll"

    const-string v17, "lofi"

    const-string v18, "sierra"

    const-string v19, "kelvin"

    const-string v20, "walden"

    const-string v21, "f1977"

    const-string v22, "num"

    filled-new-array/range {v2 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/Surface;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mSurfaceList:[Landroid/view/Surface;

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mNumsOfEffect:I

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mDisplayWidth:I

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mDisplayHeight:I

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mOrientation:I

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mSelectedPosition:I

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mDisplayOrientation:I

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mMirror:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectsDone:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mShowEffects:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mNeedScrollToFirstPosition:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mSizeChanged:Z

    new-instance v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$2;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mMainHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mDisplayWidth:I

    return p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mNumsOfEffect:I

    return p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)[Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mSurfaceList:[Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectEntryValues:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->getEffectId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$EffectUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectUpdateListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$EffectUpdateListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mDisplayOrientation:I

    return p0
.end method

.method static synthetic access$1700(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mMirror:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectEntries:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mDisplayHeight:I

    return p0
.end method

.method static synthetic access$2000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;Landroid/content/Context;II)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->computeRotation(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;Lcom/freeme/camera/common/widget/RotateLayout;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->layoutByOrientation(Lcom/freeme/camera/common/widget/RotateLayout;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;Landroid/view/View;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->setOrientation(Landroid/view/View;IZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$SurfaceAvailableListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mSurfaceAvailableListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$SurfaceAvailableListener;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mNeedScrollToFirstPosition:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mItemClickListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ItemClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mGridView:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mGridView:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectsLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$402(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectsLayout:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectsDone:Z

    return p0
.end method

.method static synthetic access$502(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectsDone:Z

    return p1
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ViewStateCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mViewStateCallback:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ViewStateCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mOrientation:I

    return p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->rotateGridViewItem(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->startFadeInAnimation(Landroid/view/View;)V

    return-void
.end method

.method private computeRotation(Landroid/content/Context;II)I
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sub-int/2addr p2, p3

    add-int/lit16 p2, p2, 0x168

    rem-int/lit16 p2, p2, 0x168

    :cond_0
    return p2
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p1, p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method private getEffectId(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectName:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-direct {p0, p1, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", effetId:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "effectName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", effetId: -1"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method private hideEffect(ZJ)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideEffect(), animation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mEffectsLayout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectsLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mShowEffects:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectsLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->startFadeOutAnimation(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectsLayout:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mViewStateCallback:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ViewStateCallback;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ViewStateCallback;->onViewHidden()V

    :cond_1
    return-void
.end method

.method private initialEffect()V
    .locals 6

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initialEffect]mEffectsLayout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSizeChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mSizeChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mMirror:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mMirror:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectsLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nums of effect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mNumsOfEffect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mViewStateCallback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mViewStateCallback:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ViewStateCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b0068

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectsLayout:Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectsLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mViewStateCallback:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ViewStateCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ViewStateCallback;->onViewCreated()V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectsLayout:Landroid/view/ViewGroup;

    const v2, 0x7f090119

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mGridView:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mDisplayWidth:I

    rem-int/lit8 v2, v0, 0x3

    const/4 v4, 0x3

    if-nez v2, :cond_1

    div-int/2addr v0, v4

    goto :goto_0

    :cond_1
    div-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mGridView:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    invoke-virtual {v2, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->setGridWidth(I)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mGridView:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    iget v5, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mDisplayHeight:I

    div-int/2addr v5, v4

    invoke-virtual {v2, v5}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->setGridHeight(I)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mGridView:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    invoke-virtual {v2, v4}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->setGridCountInColumn(I)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mGridView:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    mul-int/2addr v0, v4

    iget v4, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mDisplayHeight:I

    invoke-virtual {v2, v0, v4}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->setLayoutSize(II)V

    new-instance v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mAdapter:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mGridView:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mAdapter:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->setAdapter(Landroid/widget/BaseAdapter;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mGridView:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    new-instance v2, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyOnItemClickListener;

    invoke-direct {v2, p0, v3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyOnItemClickListener;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$1;)V

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->setOnItemClickListener(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mGridView:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    const v2, 0x7f080221

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->setSelector(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mGridView:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->setOverScrollMode(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mGridView:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    new-instance v2, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyOnScrollListener;

    invoke-direct {v2, p0, v3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyOnScrollListener;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$1;)V

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->setOnScrollListener(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView$OnScrollListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mGridView:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mSelectedPosition:I

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->scrollToSelectedPosition(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mGridView:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mSelectedPosition:I

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->showSelectedBorder(I)V

    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mSizeChanged:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectsLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mSizeChanged:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mGridView:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mDisplayWidth:I

    iget v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mDisplayHeight:I

    invoke-virtual {v0, v2, v3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->setLayoutSize(II)V

    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mSizeChanged:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private layoutByOrientation(Lcom/freeme/camera/common/widget/RotateLayout;I)V
    .locals 6

    invoke-virtual {p1}, Lcom/freeme/camera/common/widget/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa

    const/16 v2, 0x9

    const/16 v3, 0xc

    const/16 v4, 0xb

    if-eqz p2, :cond_3

    const/16 v5, 0x5a

    if-eq p2, v5, :cond_2

    const/16 v5, 0xb4

    if-eq p2, v5, :cond_1

    const/16 v5, 0x10e

    if-eq p2, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    :goto_0
    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/widget/RotateLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/freeme/camera/common/widget/RotateLayout;->requestLayout()V

    return-void
.end method

.method private rotateGridViewItem(I)V
    .locals 8

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotateGridViewItem(), orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x10e

    invoke-direct {p0, v0, p1, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->computeRotation(Landroid/content/Context;II)I

    move-result p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mGridView:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mGridView:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    invoke-virtual {v3, v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    const v7, 0x7f090181

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/freeme/camera/common/widget/RotateLayout;

    invoke-direct {p0, v6, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->layoutByOrientation(Lcom/freeme/camera/common/widget/RotateLayout;I)V

    const/4 v7, 0x1

    invoke-direct {p0, v6, p1, v7}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->setOrientation(Landroid/view/View;IZ)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setOrientation(Landroid/view/View;IZ)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[setOrientation]view is null,return."

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/freeme/camera/common/widget/Rotatable;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/freeme/camera/common/widget/Rotatable;

    invoke-interface {p1, p2, p3}, Lcom/freeme/camera/common/widget/Rotatable;->setOrientation(IZ)V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->setOrientation(Landroid/view/View;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private startFadeInAnimation(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mFadeIn:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f010019

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mFadeIn:Landroid/view/animation/Animation;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mFadeIn:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mFadeIn:Landroid/view/animation/Animation;

    :cond_1
    return-void
.end method

.method private startFadeOutAnimation(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mFadeOut:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f01001a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mFadeOut:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mFadeOut:Landroid/view/animation/Animation;

    new-instance v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$3;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$3;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mFadeOut:Landroid/view/animation/Animation;

    :cond_1
    return-void
.end method


# virtual methods
.method public hideView(ZI)V
    .locals 2

    int-to-long v0, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->hideEffect(ZJ)V

    return-void
.end method

.method public onEffectAvailable()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onEffectAvailable]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectsDone:Z

    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mDisplayOrientation:I

    return-void
.end method

.method public setEffectEntriesAndEntryValues(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectEntries:Ljava/util/List;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectEntryValues:Ljava/util/List;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectEntryValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mNumsOfEffect:I

    return-void
.end method

.method public setEffectUpdateListener(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$EffectUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectUpdateListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$EffectUpdateListener;

    return-void
.end method

.method public setItemClickListener(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mItemClickListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ItemClickListener;

    return-void
.end method

.method public setLayoutSize(II)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setLayoutSize], inputSize, width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "displayOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mDisplayWidth:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mDisplayHeight:I

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mGridView:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$1;

    invoke-direct {p2, p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$1;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object p1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSizeChanged(), outputSize, mDisplayWidth:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mDisplayWidth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mDisplayHeight:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mDisplayHeight:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mSizeChanged:Z

    return-void
.end method

.method public setMirror(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mMirror:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 3

    iget v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mOrientation:I

    if-eq v0, p1, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<setOrientation> mOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mOrientation:I

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->rotateGridViewItem(I)V

    :cond_0
    return-void
.end method

.method public setSelectedEffect(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectEntryValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mSelectedPosition:I

    return-void
.end method

.method public setSurfaceAvailableListener(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$SurfaceAvailableListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mSurfaceAvailableListener:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$SurfaceAvailableListener;

    return-void
.end method

.method public setViewStateCallback(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ViewStateCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mViewStateCallback:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$ViewStateCallback;

    return-void
.end method

.method public showView()V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[showView]..., start"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mShowEffects:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mGridView:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mNeedScrollToFirstPosition:Z

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mNeedScrollToFirstPosition:Z

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->scrollToSelectedPosition(I)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mGridView:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayView;->showSelectedBorder(I)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectsLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->initialEffect()V

    :cond_2
    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mEffectsDone:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[showEffect]..., end"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
