.class Lcom/freeme/camera/ui/CameraAppUI$6;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/CameraAppUI;->sortSizesIncrease(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/freeme/camera/common/IAppUi$ModeItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$6;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/freeme/camera/common/IAppUi$ModeItem;Lcom/freeme/camera/common/IAppUi$ModeItem;)I
    .locals 0

    iget p1, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mPriority:I

    iget p2, p2, Lcom/freeme/camera/common/IAppUi$ModeItem;->mPriority:I

    sub-int/2addr p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/freeme/camera/common/IAppUi$ModeItem;

    check-cast p2, Lcom/freeme/camera/common/IAppUi$ModeItem;

    invoke-virtual {p0, p1, p2}, Lcom/freeme/camera/ui/CameraAppUI$6;->compare(Lcom/freeme/camera/common/IAppUi$ModeItem;Lcom/freeme/camera/common/IAppUi$ModeItem;)I

    move-result p1

    return p1
.end method
