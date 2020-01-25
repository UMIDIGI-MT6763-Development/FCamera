.class public abstract Lcom/freeme/camera/feature/mode/iko/DragDetailFragmentPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "DragDetailFragmentPagerAdapter.java"


# instance fields
.field private mCurrentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getPrimaryItem()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/DragDetailFragmentPagerAdapter;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    instance-of p1, p3, Landroid/view/View;

    if-eqz p1, :cond_0

    check-cast p3, Landroid/view/View;

    iput-object p3, p0, Lcom/freeme/camera/feature/mode/iko/DragDetailFragmentPagerAdapter;->mCurrentView:Landroid/view/View;

    goto :goto_0

    :cond_0
    instance-of p1, p3, Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_1

    check-cast p3, Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/DragDetailFragmentPagerAdapter;->mCurrentView:Landroid/view/View;

    :cond_1
    :goto_0
    return-void
.end method
