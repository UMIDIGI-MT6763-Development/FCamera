.class Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;
.super Ljava/lang/Object;
.source "OnScreenHintManager.java"

# interfaces
.implements Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/OnScreenHintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnOrientationChangeListenerImpl"
.end annotation


# static fields
.field private static final TEXT_MARGIN_HORIZON:I = 0xa

.field private static final TEXT_MARGIN_VERTICAL:I = 0x32

.field private static final TEXT_MARGIN_VERTICAL_REVERSE:I = 0xb4


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/OnScreenHintManager;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/ui/OnScreenHintManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/ui/OnScreenHintManager;Lcom/freeme/camera/ui/OnScreenHintManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;-><init>(Lcom/freeme/camera/ui/OnScreenHintManager;)V

    return-void
.end method

.method private dpToPixel(I)I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/OnScreenHintManager;->access$800(Lcom/freeme/camera/ui/OnScreenHintManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/OnScreenHintManager;->access$700(Lcom/freeme/camera/ui/OnScreenHintManager;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0900f2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-static {v1}, Lcom/freeme/camera/ui/OnScreenHintManager;->access$800(Lcom/freeme/camera/ui/OnScreenHintManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_0

    add-int/lit16 v1, p1, 0xb4

    rem-int/lit16 v1, v1, 0x168

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0xb

    if-eqz v1, :cond_3

    const/16 v5, 0x5a

    const/16 v6, 0xb4

    if-eq v1, v5, :cond_2

    if-eq v1, v6, :cond_1

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_1
    invoke-direct {p0, v4}, Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;->dpToPixel(I)I

    move-result v1

    invoke-direct {p0, v6}, Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;->dpToPixel(I)I

    move-result v2

    invoke-direct {p0, v4}, Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;->dpToPixel(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v6}, Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;->dpToPixel(I)I

    move-result v1

    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;->dpToPixel(I)I

    move-result v2

    invoke-direct {p0, v6}, Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;->dpToPixel(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v4}, Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;->dpToPixel(I)I

    move-result v1

    const/16 v2, 0x32

    invoke-direct {p0, v2}, Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;->dpToPixel(I)I

    move-result v2

    invoke-direct {p0, v4}, Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;->dpToPixel(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/OnScreenHintManager;->access$700(Lcom/freeme/camera/ui/OnScreenHintManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/OnScreenHintManager;->access$800(Lcom/freeme/camera/ui/OnScreenHintManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/OnScreenHintManager$OnOrientationChangeListenerImpl;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-static {v1}, Lcom/freeme/camera/ui/OnScreenHintManager;->access$700(Lcom/freeme/camera/ui/OnScreenHintManager;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateRotateLayoutChildView(Landroid/app/Activity;Landroid/view/View;IZ)V

    :cond_4
    return-void
.end method
