.class Lcom/freeme/camera/ui/OnScreenHintManager;
.super Ljava/lang/Object;
.source "OnScreenHintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/OnScreenHintManager$Stack;,
        Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;,
        Lcom/freeme/camera/ui/OnScreenHintManager$MainHandler;
    }
.end annotation


# static fields
.field private static final HIDE_HINT:I

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private final mApp:Lcom/freeme/camera/common/app/IApp;

.field private mAutoHideHint:Landroid/widget/TextView;

.field private mBottomAlwaysHint:Landroid/widget/TextView;

.field private mBottomStack:Lcom/freeme/camera/ui/OnScreenHintManager$Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/freeme/camera/ui/OnScreenHintManager$Stack<",
            "Lcom/freeme/camera/common/IAppUi$HintInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAutoHideInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

.field private mCurrentBottomInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

.field private mCurrentClickValue:Ljava/lang/String;

.field private mCurrentTopInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

.field private mHintRoot:Landroid/view/ViewGroup;

.field private mMainHandler:Lcom/freeme/camera/ui/OnScreenHintManager$MainHandler;

.field private final mOrientationChangeListener:Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;

.field private mTopAlwaysHint:Landroid/widget/TextView;

.field private mTopStack:Lcom/freeme/camera/ui/OnScreenHintManager$Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/freeme/camera/ui/OnScreenHintManager$Stack<",
            "Lcom/freeme/camera/common/IAppUi$HintInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomHintClickListener:Lcom/freeme/camera/common/app/IApp$OnZoomHintClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/ui/OnScreenHintManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method constructor <init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentClickValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    const v0, 0x7f090188

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mHintRoot:Landroid/view/ViewGroup;

    new-instance p2, Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;-><init>(Lcom/freeme/camera/ui/OnScreenHintManager;Lcom/freeme/camera/ui/OnScreenHintManager$1;)V

    iput-object p2, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mOrientationChangeListener:Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;

    iget-object p2, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mHintRoot:Landroid/view/ViewGroup;

    const v1, 0x7f0901ea

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mTopAlwaysHint:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mHintRoot:Landroid/view/ViewGroup;

    const v1, 0x7f09004c

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mAutoHideHint:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mHintRoot:Landroid/view/ViewGroup;

    const v1, 0x7f090058

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mBottomAlwaysHint:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mBottomAlwaysHint:Landroid/widget/TextView;

    new-instance v1, Lcom/freeme/camera/ui/OnScreenHintManager$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/OnScreenHintManager$1;-><init>(Lcom/freeme/camera/ui/OnScreenHintManager;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;

    invoke-direct {p2, p0, v0}, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;-><init>(Lcom/freeme/camera/ui/OnScreenHintManager;Lcom/freeme/camera/ui/OnScreenHintManager$1;)V

    iput-object p2, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mTopStack:Lcom/freeme/camera/ui/OnScreenHintManager$Stack;

    new-instance p2, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;

    invoke-direct {p2, p0, v0}, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;-><init>(Lcom/freeme/camera/ui/OnScreenHintManager;Lcom/freeme/camera/ui/OnScreenHintManager$1;)V

    iput-object p2, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mBottomStack:Lcom/freeme/camera/ui/OnScreenHintManager$Stack;

    new-instance p2, Lcom/freeme/camera/ui/OnScreenHintManager$MainHandler;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/freeme/camera/ui/OnScreenHintManager$MainHandler;-><init>(Lcom/freeme/camera/ui/OnScreenHintManager;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mMainHandler:Lcom/freeme/camera/ui/OnScreenHintManager$MainHandler;

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/ui/OnScreenHintManager;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mBottomAlwaysHint:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/ui/OnScreenHintManager;)Lcom/freeme/camera/common/IAppUi$HintInfo;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentBottomInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/ui/OnScreenHintManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentClickValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/freeme/camera/ui/OnScreenHintManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentClickValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/freeme/camera/ui/OnScreenHintManager;)Lcom/freeme/camera/common/app/IApp$OnZoomHintClickListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mZoomHintClickListener:Lcom/freeme/camera/common/app/IApp$OnZoomHintClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/ui/OnScreenHintManager;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mAutoHideHint:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/ui/OnScreenHintManager;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mHintRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/ui/OnScreenHintManager;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method


# virtual methods
.method hideScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V
    .locals 4

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/ui/OnScreenHintManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "hideScreenHint info is null!"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/freeme/camera/ui/OnScreenHintManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideScreenHint type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mType:Lcom/freeme/camera/common/IAppUi$HintType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " string = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/ui/OnScreenHintManager$2;->$SwitchMap$com$freeme$camera$common$IAppUi$HintType:[I

    iget-object v1, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mType:Lcom/freeme/camera/common/IAppUi$HintType;

    invoke-virtual {v1}, Lcom/freeme/camera/common/IAppUi$HintType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentBottomInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mBottomStack:Lcom/freeme/camera/ui/OnScreenHintManager$Stack;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;->empty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/freeme/camera/ui/OnScreenHintManager;->unSupportedMode()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mBottomStack:Lcom/freeme/camera/ui/OnScreenHintManager$Stack;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/common/IAppUi$HintInfo;

    iput-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentBottomInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mBottomAlwaysHint:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentBottomInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object v0, v0, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mBottomAlwaysHint:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentBottomInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mBottomAlwaysHint:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mBottomStack:Lcom/freeme/camera/ui/OnScreenHintManager$Stack;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mBottomStack:Lcom/freeme/camera/ui/OnScreenHintManager$Stack;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentAutoHideInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mMainHandler:Lcom/freeme/camera/ui/OnScreenHintManager$MainHandler;

    invoke-virtual {p1, v3}, Lcom/freeme/camera/ui/OnScreenHintManager$MainHandler;->removeMessages(I)V

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mAutoHideHint:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentBottomInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mBottomAlwaysHint:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentTopInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mTopStack:Lcom/freeme/camera/ui/OnScreenHintManager$Stack;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;->empty()Z

    move-result p1

    if-eqz p1, :cond_4

    iput-object v1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentTopInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mTopAlwaysHint:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mTopStack:Lcom/freeme/camera/ui/OnScreenHintManager$Stack;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/common/IAppUi$HintInfo;

    iput-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentTopInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mTopAlwaysHint:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentTopInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object v0, v0, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mTopAlwaysHint:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentTopInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object v0, v0, Lcom/freeme/camera/common/IAppUi$HintInfo;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mTopAlwaysHint:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mTopStack:Lcom/freeme/camera/ui/OnScreenHintManager$Stack;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mTopStack:Lcom/freeme/camera/ui/OnScreenHintManager$Stack;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iput-object v1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentTopInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mTopAlwaysHint:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mHintRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setZoomClickListener(Lcom/freeme/camera/common/app/IApp$OnZoomHintClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mZoomHintClickListener:Lcom/freeme/camera/common/app/IApp$OnZoomHintClickListener;

    return-void
.end method

.method showScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V
    .locals 4

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/ui/OnScreenHintManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "showScreenHint info is null!"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/freeme/camera/ui/OnScreenHintManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showScreenHint type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mType:Lcom/freeme/camera/common/IAppUi$HintType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " string = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/freeme/camera/ui/OnScreenHintManager$2;->$SwitchMap$com$freeme$camera$common$IAppUi$HintType:[I

    iget-object v1, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mType:Lcom/freeme/camera/common/IAppUi$HintType;

    invoke-virtual {v1}, Lcom/freeme/camera/common/IAppUi$HintType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentBottomInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mBottomStack:Lcom/freeme/camera/ui/OnScreenHintManager$Stack;

    invoke-virtual {v2, v0}, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;->push(Ljava/lang/Object;)V

    :cond_2
    iput-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentBottomInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mBottomAlwaysHint:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentBottomInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object v0, v0, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mAutoHideHint:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/freeme/camera/ui/OnScreenHintManager;->unSupportedMode()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mBottomAlwaysHint:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mAutoHideHint:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mAutoHideHint:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mBottomAlwaysHint:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mAutoHideHint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iput-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentAutoHideInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mMainHandler:Lcom/freeme/camera/ui/OnScreenHintManager$MainHandler;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/OnScreenHintManager$MainHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mMainHandler:Lcom/freeme/camera/ui/OnScreenHintManager$MainHandler;

    iget p1, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mDelayTime:I

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/ui/OnScreenHintManager$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentTopInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mTopStack:Lcom/freeme/camera/ui/OnScreenHintManager$Stack;

    invoke-virtual {v2, v0}, Lcom/freeme/camera/ui/OnScreenHintManager$Stack;->push(Ljava/lang/Object;)V

    :cond_3
    iput-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentTopInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mTopAlwaysHint:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentTopInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object v0, v0, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mTopAlwaysHint:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mCurrentTopInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object v0, v0, Lcom/freeme/camera/common/IAppUi$HintInfo;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mTopAlwaysHint:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showZoomRatioHint(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mBottomAlwaysHint:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mBottomAlwaysHint:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mBottomAlwaysHint:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mBottomAlwaysHint:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public unSupportedMode()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
