.class public interface abstract Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;
    }
.end annotation


# virtual methods
.method public abstract isActivating()Z
.end method

.method public abstract isCameraAction()Z
.end method

.method public abstract isSelected()Z
.end method

.method public abstract setAction(Lorg/lasque/tusdk/modules/view/widget/filter/GroupFilterItemViewInterface$GroupFilterAction;)V
.end method

.method public abstract setFilterTask(Lorg/lasque/tusdk/core/task/FilterTaskInterface;)V
.end method

.method public abstract stopActivating()V
.end method

.method public abstract waitInActivate(J)V
.end method
