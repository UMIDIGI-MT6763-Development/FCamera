.class Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView$1;
.super Ljava/lang/Object;
.source "WhiteBalanceIndicatorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->updateIndicator(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;

.field final synthetic val$mode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView$1;->val$mode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->access$000(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->access$000(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView$1;->val$mode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    invoke-static {}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateIndicator], index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->access$200(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->access$200(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->access$400(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;

    invoke-static {v4}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->access$300(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;)[I

    move-result-object v4

    aget v1, v4, v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView$1;->this$0:Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->access$200(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method
