.class public Lorg/lasque/tusdk/core/view/recyclerview/TuSdkRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;

# interfaces
.implements Lorg/lasque/tusdk/core/view/TuSdkViewInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkRecyclerView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkRecyclerView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/recyclerview/TuSdkRecyclerView;->initView()V

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 0

    return-void
.end method

.method public loadView()V
    .locals 0

    return-void
.end method

.method public viewDidLoad()V
    .locals 0

    return-void
.end method

.method public viewNeedRest()V
    .locals 0

    return-void
.end method

.method public viewWillDestory()V
    .locals 0

    return-void
.end method
