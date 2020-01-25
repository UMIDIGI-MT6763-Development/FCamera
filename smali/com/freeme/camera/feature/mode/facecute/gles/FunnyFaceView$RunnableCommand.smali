.class public Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;
.super Ljava/lang/Object;
.source "FunnyFaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunnableCommand"
.end annotation


# static fields
.field public static final CREATE_TEXTURE_COMMAND:I = 0x0

.field public static final DESTRORY_TEXTURE_COMMAND:I = 0x1

.field public static final TAKE_PICKTURE_COMMAND:I = 0x2


# instance fields
.field private mCommand:I

.field private mIsFinish:Z

.field private mPixmap:Lcom/badlogic/gdx/graphics/Pixmap;

.field private mTexture:Lcom/badlogic/gdx/graphics/Texture;

.field final synthetic this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;I)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;->mCommand:I

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;ILcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;->mCommand:I

    iput-object p3, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;->mPixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;->mCommand:I

    iput-boolean p3, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;->mIsFinish:Z

    return-void
.end method


# virtual methods
.method public getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;->mTexture:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public run()V
    .locals 3

    iget v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;->mCommand:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->capture()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$000(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$100(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)V

    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;->mIsFinish:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$200(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)V

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$000(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_2
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$000(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;->mPixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;->mTexture:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView$RunnableCommand;->this$0:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->access$000(Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
