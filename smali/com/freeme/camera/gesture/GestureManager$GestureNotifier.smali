.class Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;
.super Ljava/lang/Object;
.source "GestureManager.java"

# interfaces
.implements Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/gesture/GestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/gesture/GestureManager;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/gesture/GestureManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/gesture/GestureManager;Lcom/freeme/camera/gesture/GestureManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;-><init>(Lcom/freeme/camera/gesture/GestureManager;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$300(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;->onDoubleTap(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$300(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$300(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$300(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;->onLongPress(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$300(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_1
    return v2
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$300(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_1
    return v2
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$300(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_1
    return v2
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$300(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$300(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;->onSingleTapConfirmed(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(FF)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$300(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;->onSingleTapUp(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/gesture/GestureManager$GestureNotifier;->this$0:Lcom/freeme/camera/gesture/GestureManager;

    invoke-static {v0}, Lcom/freeme/camera/gesture/GestureManager;->access$300(Lcom/freeme/camera/gesture/GestureManager;)Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
