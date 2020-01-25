.class Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordHandler"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->n(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieCreatorInterface$ByteDataFrame;

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieCreatorInterface$ByteDataFrame;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->m(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->l(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->k(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->_stopRecording()V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordHandler;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->j(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
