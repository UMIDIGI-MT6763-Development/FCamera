.class Lcom/freeme/camera/feature/setting/focus/FocusView$EndAction;
.super Ljava/lang/Object;
.source "FocusView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/focus/FocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/focus/FocusView;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/setting/focus/FocusView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView$EndAction;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/setting/focus/FocusView;Lcom/freeme/camera/feature/setting/focus/FocusView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusView$EndAction;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView$EndAction;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusView;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->access$300(Lcom/freeme/camera/feature/setting/focus/FocusView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/feature/setting/focus/FocusView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
