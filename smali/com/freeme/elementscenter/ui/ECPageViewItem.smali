.class public Lcom/freeme/elementscenter/ui/ECPageViewItem;
.super Landroid/widget/LinearLayout;
.source "ECPageViewItem.java"


# instance fields
.field private mAdapter:Lcom/freeme/elementscenter/ui/ECGridViewAdapter;

.field private mContext:Landroid/content/Context;

.field private mGridView:Landroid/widget/GridView;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/freeme/elementscenter/ui/ECPageViewItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECPageViewItem;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECPageViewItem;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/freeme/elementscenter/ui/ECPageViewItem;->inflateView()V

    return-void
.end method

.method private inflateView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECPageViewItem;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/freeme/elementscenter/R$layout;->ec_gridview:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/freeme/elementscenter/R$id;->ec_gridview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECPageViewItem;->mGridView:Landroid/widget/GridView;

    new-instance v0, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECPageViewItem;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/elementscenter/ui/ECPageViewItem;->mAdapter:Lcom/freeme/elementscenter/ui/ECGridViewAdapter;

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECPageViewItem;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECPageViewItem;->mAdapter:Lcom/freeme/elementscenter/ui/ECGridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/freeme/elementscenter/ui/ECGridViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECPageViewItem;->mAdapter:Lcom/freeme/elementscenter/ui/ECGridViewAdapter;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECPageViewItem;->mAdapter:Lcom/freeme/elementscenter/ui/ECGridViewAdapter;

    invoke-virtual {v0}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->pause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECPageViewItem;->mAdapter:Lcom/freeme/elementscenter/ui/ECGridViewAdapter;

    invoke-virtual {v0}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECPageViewItem;->mAdapter:Lcom/freeme/elementscenter/ui/ECGridViewAdapter;

    iget-object v1, p0, Lcom/freeme/elementscenter/ui/ECPageViewItem;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Lcom/freeme/elementscenter/ui/ECGridViewAdapter;->resume(Landroid/widget/GridView;)V

    return-void
.end method
