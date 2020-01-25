.class Lcom/freeme/camera/feature/setting/focus/Focus$13;
.super Ljava/lang/Object;
.source "Focus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/focus/Focus;->onFocusStateUpdate(Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/focus/Focus;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/focus/Focus;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$13;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$13;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$100(Lcom/freeme/camera/feature/setting/focus/Focus;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$13;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$5400(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->getAfLockRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v1

    const-string v2, "focus lock"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$13;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$5500(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->getAeAfLockRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v1

    const-string v2, "focus lock"

    invoke-virtual {v1, v2, v3}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$13;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$102(Lcom/freeme/camera/feature/setting/focus/Focus;Z)Z

    :cond_0
    return-void
.end method
