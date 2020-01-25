.class public interface abstract Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterTableViewInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract changeSelectedPosition(I)V
.end method

.method public abstract getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
.end method

.method public abstract getModeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectedPosition()I
.end method

.method public abstract reloadData()V
.end method

.method public abstract scrollToPosition(I)V
.end method

.method public abstract scrollToPositionWithOffset(II)V
.end method

.method public abstract setAction(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;)V
.end method

.method public abstract setCellLayoutId(I)V
.end method

.method public abstract setDisplaySelectionIcon(Z)V
.end method

.method public abstract setFilterTask(Lorg/lasque/tusdk/core/task/FilterTaskInterface;)V
.end method

.method public abstract setGroupDelegate(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterGroupViewBase$GroupFilterGroupViewDelegate;)V
.end method

.method public abstract setGroupFilterCellWidth(I)V
.end method

.method public abstract setItemClickDelegate(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TuSdkTableViewItemClickDelegate;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TuSdkTableViewItemClickDelegate<",
            "Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;",
            "Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewBase;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setModeList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSelectedPosition(I)V
.end method

.method public abstract setSelectedPosition(IZ)V
.end method

.method public abstract smoothScrollByCenter(Landroid/view/View;)V
.end method
