.class Lcom/baidu/location/h/b$a;
.super Landroid/telephony/PhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/h/b;


# direct methods
.method public constructor <init>(Lcom/baidu/location/h/b;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/h/b$a;->a:Lcom/baidu/location/h/b;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/baidu/location/h/b$a;->a:Lcom/baidu/location/h/b;

    invoke-static {p1}, Lcom/baidu/location/h/b;->if(Lcom/baidu/location/h/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/h/b$a;->a:Lcom/baidu/location/h/b;

    invoke-static {v0}, Lcom/baidu/location/h/b;->do(Lcom/baidu/location/h/b;)Lcom/baidu/location/h/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/h/b$a;->a:Lcom/baidu/location/h/b;

    invoke-static {v0}, Lcom/baidu/location/h/b;->do(Lcom/baidu/location/h/b;)Lcom/baidu/location/h/h;

    move-result-object v0

    iget-char v0, v0, Lcom/baidu/location/h/h;->kA:C

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/h/b$a;->a:Lcom/baidu/location/h/b;

    invoke-static {v0}, Lcom/baidu/location/h/b;->do(Lcom/baidu/location/h/b;)Lcom/baidu/location/h/h;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    :goto_0
    iput p1, v0, Lcom/baidu/location/h/h;->kz:I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/h/b$a;->a:Lcom/baidu/location/h/b;

    invoke-static {v0}, Lcom/baidu/location/h/b;->do(Lcom/baidu/location/h/b;)Lcom/baidu/location/h/h;

    move-result-object v0

    iget-char v0, v0, Lcom/baidu/location/h/h;->kA:C

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/baidu/location/h/b$a;->a:Lcom/baidu/location/h/b;

    invoke-static {v0}, Lcom/baidu/location/h/b;->do(Lcom/baidu/location/h/b;)Lcom/baidu/location/h/h;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
