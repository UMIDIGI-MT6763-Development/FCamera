.class public Lcom/freeme/camera/ui/modepicker/ModePickerFragment;
.super Landroid/app/Fragment;
.source "ModePickerFragment.java"

# interfaces
.implements Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/modepicker/ModePickerFragment$OnViewItemClickListenerImpl;,
        Lcom/freeme/camera/ui/modepicker/ModePickerFragment$OnModeSelectedListener;,
        Lcom/freeme/camera/ui/modepicker/ModePickerFragment$StateListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mAdapter:Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;

.field private mCurrentModeName:Ljava/lang/String;

.field private mIsClickEnabled:Z

.field private mModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mModeSelectedListener:Lcom/freeme/camera/ui/modepicker/ModePickerFragment$OnModeSelectedListener;

.field private mOrientation:I

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSettingClickedListener:Landroid/view/View$OnClickListener;

.field private mSettingVisibility:I

.field private mStateListener:Lcom/freeme/camera/ui/modepicker/ModePickerFragment$StateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/ui/modepicker/ModePickerFragment;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mSettingClickedListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/ui/modepicker/ModePickerFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mIsClickEnabled:Z

    return p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/ui/modepicker/ModePickerFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/ui/modepicker/ModePickerFragment;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mOrientation:I

    return p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/ui/modepicker/ModePickerFragment;)Lcom/freeme/camera/ui/modepicker/ModePickerFragment$OnModeSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mModeSelectedListener:Lcom/freeme/camera/ui/modepicker/ModePickerFragment$OnModeSelectedListener;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mIsClickEnabled:Z

    iget-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mStateListener:Lcom/freeme/camera/ui/modepicker/ModePickerFragment$StateListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$StateListener;->onCreate()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p3, 0x0

    const v0, 0x7f0b006d

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/freeme/camera/common/utils/CameraUtil;->calculateRotateLayoutCompensate(Landroid/app/Activity;)I

    move-result p2

    invoke-static {p1, p2, p3}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateViewOrientation(Landroid/view/View;IZ)V

    const p2, 0x7f0901ad

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget p3, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mSettingVisibility:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3}, Lcom/freeme/camera/common/utils/CameraUtil;->isHasNavigationBar(Landroid/app/Activity;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3}, Lcom/freeme/camera/common/utils/CameraUtil;->getNavigationBarHeight(Landroid/app/Activity;)I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, p3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance p3, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$1;

    invoke-direct {p3, p0}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$1;-><init>(Lcom/freeme/camera/ui/modepicker/ModePickerFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09012e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;

    invoke-virtual {p0}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    new-instance v0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$OnViewItemClickListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$OnViewItemClickListenerImpl;-><init>(Lcom/freeme/camera/ui/modepicker/ModePickerFragment;Lcom/freeme/camera/ui/modepicker/ModePickerFragment$1;)V

    invoke-direct {p2, p3, v0}, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;-><init>(Landroid/content/Context;Lcom/freeme/camera/ui/modepicker/ModeItemAdapter$OnViewItemClickListener;)V

    iput-object p2, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mAdapter:Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;

    iget-object p2, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mAdapter:Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;

    iget-object p3, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->updateCurrentModeName(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mAdapter:Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;

    iget-object p3, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mModeList:Ljava/util/List;

    invoke-virtual {p2, p3}, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->setModeList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p3, v0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object p2, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mAdapter:Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object p2, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$2;

    invoke-direct {p3, p0}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$2;-><init>(Lcom/freeme/camera/ui/modepicker/ModePickerFragment;)V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    iget-object p2, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$3;

    invoke-direct {p3, p0}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$3;-><init>(Lcom/freeme/camera/ui/modepicker/ModePickerFragment;)V

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mAdapter:Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mStateListener:Lcom/freeme/camera/ui/modepicker/ModePickerFragment$StateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$StateListener;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3

    iput p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mOrientation:I

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateRotateLayoutChildView(Landroid/app/Activity;Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mStateListener:Lcom/freeme/camera/ui/modepicker/ModePickerFragment$StateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$StateListener;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mStateListener:Lcom/freeme/camera/ui/modepicker/ModePickerFragment$StateListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment$StateListener;->onResume()V

    :cond_0
    return-void
.end method

.method public refreshModeList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mModeList:Ljava/util/List;

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mAdapter:Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/modepicker/ModeItemAdapter;->setModeList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mIsClickEnabled:Z

    return-void
.end method

.method public setModeSelectedListener(Lcom/freeme/camera/ui/modepicker/ModePickerFragment$OnModeSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mModeSelectedListener:Lcom/freeme/camera/ui/modepicker/ModePickerFragment$OnModeSelectedListener;

    return-void
.end method

.method public setSettingClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mSettingClickedListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSettingIconVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    iput p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mSettingVisibility:I

    return-void
.end method

.method public setStateListener(Lcom/freeme/camera/ui/modepicker/ModePickerFragment$StateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mStateListener:Lcom/freeme/camera/ui/modepicker/ModePickerFragment$StateListener;

    return-void
.end method

.method public updateCurrentModeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method
