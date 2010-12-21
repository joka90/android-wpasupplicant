ifeq ($(BOARD_WPA_SUPPLICANT_DRIVER),NL80211)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	addr.c attr.c cache.c cache_mngr.c cache_mngt.c data.c \
	error.c handlers.c msg.c nl.c object.c socket.c utils.c \
	\
	genl/ctrl.c genl/family.c genl/genl.c genl/mngt.c

DISABLED_LOCAL_SRC_FILES := \
	route/addr.c route/class.c route/class_api.c route/class_obj.c \
	route/cls.c route/cls_api.c route/cls_obj.c route/link.c \
	route/neigh.c route/neightbl.c route/nexthop.c route/qdisc.c \
	route/qdisc_api.c route/qdisc_obj.c route/route.c route/route_obj.c \
	route/route_utils.c route/rtnl.c route/rule.c route/tc.c route/classid.c \
	\
	route/cls/fw.c route/cls/police.c route/cls/u32.c route/cls/basic.c \
	route/cls/cgroup.c \
	\
	route/cls/ematch_syntax.c route/cls/ematch_grammar.c \
	route/cls/ematch.c \
	route/cls/ematch/container.c route/cls/ematch/cmp.c \
	route/cls/ematch/nbyte.c route/cls/ematch/text.c \
	route/cls/ematch/meta.c \
	\
	route/link/api.c route/link/vlan.c \
	route/link/bridge.c route/link/inet6.c route/link/inet.c \
	\
	route/sch/blackhole.c route/sch/cbq.c route/sch/dsmark.c \
	route/sch/fifo.c route/sch/htb.c route/sch/netem.c route/sch/prio.c \
	route/sch/red.c route/sch/sfq.c route/sch/tbf.c \
	\
	fib_lookup/lookup.c fib_lookup/request.c \
	\
	route/pktloc_syntax.c route/pktloc_grammar.c route/pktloc.c \
	\
	netfilter/ct.c netfilter/ct_obj.c netfilter/log.c \
	netfilter/log_msg.c netfilter/log_msg_obj.c netfilter/log_obj.c \
	netfilter/netfilter.c netfilter/nfnl.c netfilter/queue.c \
	netfilter/queue_msg.c netfilter/queue_msg_obj.c netfilter/queue_obj.c

LOCAL_CFLAGS := -O2 -g
LOCAL_CFLAGS += -I$(LOCAL_PATH)/../libnl-include

LOCAL_MODULE := libnl
LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_LIBRARY)

endif
