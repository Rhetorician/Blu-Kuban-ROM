.class Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$5;
.super Ljava/lang/Object;
.source "AccountSettingsSyncScheduleFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->setupRoaming(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$5;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment$5;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleFragment;->showRequireManualSyncRoamingToast()V

    .line 580
    const/4 v0, 0x0

    return v0
.end method