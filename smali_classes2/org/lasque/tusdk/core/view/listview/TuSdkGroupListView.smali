.class public abstract Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;
.super Lorg/lasque/tusdk/core/view/listview/TuSdkListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewDeleagte;,
        Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewHeaderClickListener;,
        Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroid/view/View;",
        "M:",
        "Ljava/lang/Object;",
        "N:",
        "Landroid/view/View;",
        ">",
        "Lorg/lasque/tusdk/core/view/listview/TuSdkListView;"
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewItemClickListener<",
            "TT;TV;>;"
        }
    .end annotation
.end field

.field private b:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewHeaderClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewHeaderClickListener<",
            "TM;TN;>;"
        }
    .end annotation
.end field

.field private c:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewDeleagte;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView<",
            "TT;TV;TM;TN;>.Group",
            "ListViewDeleagte;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;)Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewItemClickListener;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewItemClickListener;

    return-object p0
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;)Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewHeaderClickListener;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->b:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewHeaderClickListener;

    return-object p0
.end method


# virtual methods
.method public getCellLayoutId()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->d:I

    return v0
.end method

.method public getHeaderLayoutId()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->e:I

    return v0
.end method

.method protected abstract onGroupListHeaderCreated(Landroid/view/View;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract onGroupListViewCreated(Landroid/view/View;Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;",
            ")V"
        }
    .end annotation
.end method

.method public setCellLayoutId(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->d:I

    return-void
.end method

.method public setDataSource(Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->setDataSource(Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->c:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewDeleagte;

    if-nez p1, :cond_0

    new-instance p1, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewDeleagte;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewDeleagte;-><init>(Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$1;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->c:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewDeleagte;

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->c:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewDeleagte;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->setDeleagte(Lorg/lasque/tusdk/core/view/listview/TuSdkListView$TuSdkListViewDeleagte;)V

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->reloadData()V

    return-void
.end method

.method public setHeaderClickListener(Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewHeaderClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewHeaderClickListener<",
            "TM;TN;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->b:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewHeaderClickListener;

    return-void
.end method

.method public setHeaderLayoutId(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->e:I

    return-void
.end method

.method public setItemClickListener(Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewItemClickListener<",
            "TT;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->a:Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView$GroupListViewItemClickListener;

    return-void
.end method
