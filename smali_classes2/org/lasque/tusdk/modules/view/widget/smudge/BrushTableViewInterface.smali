.class public interface abstract Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;
    }
.end annotation


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
            "Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;",
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

.method public abstract setAction(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushTableViewInterface$BrushAction;)V
.end method

.method public abstract setCellLayoutId(I)V
.end method

.method public abstract setCellWidth(I)V
.end method

.method public abstract setItemClickDelegate(Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TuSdkTableViewItemClickDelegate;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/core/view/recyclerview/TuSdkTableView$TuSdkTableViewItemClickDelegate<",
            "Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;",
            "Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setModeList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;",
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
