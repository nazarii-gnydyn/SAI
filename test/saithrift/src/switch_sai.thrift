/*
Copyright 2013-present Barefoot Networks, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

namespace py switch_sai
namespace cpp switch_sai

//
// SAI Common API *****************************************************************************************************
//

typedef bool   sai_thrift_bool_t
typedef string sai_thrift_string_t

//
// SAI Types API ******************************************************************************************************
//

typedef i32    sai_thrift_status_t
typedef i16    sai_thrift_vlan_id_t
typedef i32    sai_thrift_attr_id_t
typedef byte   sai_thrift_cos_t
typedef byte   sai_thrift_queue_index_t
typedef string sai_thrift_mac_t
typedef string sai_thrift_ip4_t
typedef string sai_thrift_ip6_t

typedef i64  sai_thrift_uint64_t
typedef i64  sai_thrift_int64_t
typedef i32  sai_thrift_uint32_t
typedef i32  sai_thrift_int32_t
typedef i16  sai_thrift_uint16_t
typedef i16  sai_thrift_int16_t
typedef byte sai_thrift_uint8_t
typedef byte sai_thrift_int8_t
typedef i32  sai_thrift_size_t
typedef i64  sai_thrift_object_id_t

typedef i32 sai_thrift_packet_color_t
typedef i32 sai_thrift_ip_addr_family_t

struct sai_thrift_object_list_t
{
    1: sai_thrift_size_t            count;
    2: list<sai_thrift_object_id_t> oid_list;
}

struct sai_thrift_u8_list_t
{
    1: sai_thrift_size_t        count;
    2: list<sai_thrift_uint8_t> u8_list;
}

struct sai_thrift_s8_list_t
{
    1: sai_thrift_size_t       count;
    2: list<sai_thrift_int8_t> s8_list;
}

struct sai_thrift_u16_list_t
{
    1: sai_thrift_size_t         count;
    2: list<sai_thrift_uint16_t> u16_list;
}

struct sai_thrift_s16_list_t
{
    1: sai_thrift_size_t        count;
    2: list<sai_thrift_int16_t> s16_list;
}

struct sai_thrift_u32_list_t
{
    1: sai_thrift_size_t         count;
    2: list<sai_thrift_uint32_t> u32_list;
}

struct sai_thrift_s32_list_t
{
    1: sai_thrift_size_t        count;
    2: list<sai_thrift_int32_t> s32_list;
}

struct sai_thrift_u32_range_t
{
    1: sai_thrift_uint32_t min;
    2: sai_thrift_uint32_t max;
}

struct sai_thrift_s32_range_t
{
    1: sai_thrift_int32_t min;
    2: sai_thrift_int32_t max;
}

struct sai_thrift_vlan_list_t
{
    1: sai_thrift_size_t          count;
    2: list<sai_thrift_vlan_id_t> vlan_list;
}

union sai_thrift_ip_t
{
    1: sai_thrift_ip4_t ip4;
    2: sai_thrift_ip6_t ip6;
}

struct sai_thrift_ip_address_t
{
    1: sai_thrift_ip_addr_family_t addr_family;
    2: sai_thrift_ip_t             addr;
}

union sai_thrift_acl_mask_t
{
    1:  sai_thrift_uint8_t   u8;
    2:  sai_thrift_int8_t    s8;
    3:  sai_thrift_uint16_t  u16;
    4:  sai_thrift_int16_t   s16;
    5:  sai_thrift_uint32_t  u32;
    6:  sai_thrift_int32_t   s32;
    7:  sai_thrift_mac_t     mac;
    8:  sai_thrift_ip4_t     ip4;
    9:  sai_thrift_ip6_t     ip6;
    10: sai_thrift_u8_list_t u8list;
}

union sai_thrift_acl_data_t
{
    1:  sai_thrift_bool_t        booldata;
    2:  sai_thrift_uint8_t       u8;
    3:  sai_thrift_int8_t        s8;
    4:  sai_thrift_uint16_t      u16;
    5:  sai_thrift_int16_t       s16;
    6:  sai_thrift_uint32_t      u32;
    7:  sai_thrift_int32_t       s32;
    8:  sai_thrift_mac_t         mac;
    9:  sai_thrift_ip4_t         ip4;
    10: sai_thrift_ip6_t         ip6;
    11: sai_thrift_object_id_t   oid;
    12: sai_thrift_object_list_t objlist;
    13: sai_thrift_u8_list_t     u8list;
}

struct sai_thrift_acl_field_data_t
{
    1: sai_thrift_bool_t     enable;
    2: sai_thrift_acl_mask_t mask;
    3: sai_thrift_acl_data_t data;
}

union sai_thrift_acl_parameter_t
{
    1:  sai_thrift_uint8_t       u8;
    2:  sai_thrift_int8_t        s8;
    3:  sai_thrift_uint16_t      u16;
    4:  sai_thrift_int16_t       s16;
    5:  sai_thrift_uint32_t      u32;
    6:  sai_thrift_int32_t       s32;
    7:  sai_thrift_mac_t         mac;
    8:  sai_thrift_ip4_t         ip4;
    9:  sai_thrift_ip6_t         ip6;
    10: sai_thrift_object_id_t   oid;
    11: sai_thrift_object_list_t objlist;
}

struct sai_thrift_acl_action_data_t
{
    1: sai_thrift_bool_t          enable;
    2: sai_thrift_acl_parameter_t parameter;
}

struct sai_thrift_qos_map_params_t
{
    1: sai_thrift_cos_t          tc;
    2: sai_thrift_uint8_t        dscp;
    3: sai_thrift_uint8_t        dot1p;
    4: sai_thrift_uint8_t        prio;
    5: sai_thrift_uint8_t        pg;
    6: sai_thrift_queue_index_t  queue_index;
    7: sai_thrift_packet_color_t color;
}

struct sai_thrift_qos_map_t
{
    1: sai_thrift_qos_map_params_t key;
    2: sai_thrift_qos_map_params_t value;
}

struct sai_thrift_qos_map_list_t
{
    1: sai_thrift_size_t          count;
    2: list<sai_thrift_qos_map_t> map_list;
}

struct sai_thrift_tunnel_map_params_t
{
    1: sai_thrift_uint8_t   oecn;
    2: sai_thrift_uint8_t   uecn;
    3: sai_thrift_vlan_id_t vlan_id;
    4: sai_thrift_uint32_t  vni_id;
}

struct sai_thrift_tunnel_map_t
{
    1: sai_thrift_tunnel_map_params_t key;
    2: sai_thrift_tunnel_map_params_t value;
}

struct sai_thrift_tunnel_map_list_t
{
    1: sai_thrift_size_t             count;
    2: list<sai_thrift_tunnel_map_t> map_list;
}

struct sai_thrift_acl_capability_t
{
    1: sai_thrift_int32_t    stage;
    2: sai_thrift_bool_t     is_action_list_mandatory;
    3: sai_thrift_s32_list_t action_list;
}

union sai_thrift_attribute_value_t
{
    1:  sai_thrift_bool_t            booldata;
    2:  sai_thrift_string_t          chardata;
    3:  sai_thrift_uint8_t           u8;
    4:  sai_thrift_int8_t            s8;
    5:  sai_thrift_uint16_t          u16;
    6:  sai_thrift_int16_t           s16;
    7:  sai_thrift_uint32_t          u32;
    8:  sai_thrift_int32_t           s32;
    9:  sai_thrift_uint64_t          u64;
    10: sai_thrift_int64_t           s64;
    11: sai_thrift_mac_t             mac;
    12: sai_thrift_ip4_t             ip4;
    13: sai_thrift_ip6_t             ip6;
    14: sai_thrift_ip_address_t      ipaddr;
    15: sai_thrift_object_id_t       oid;
    16: sai_thrift_object_list_t     objlist;
    17: sai_thrift_u8_list_t         u8list;
    18: sai_thrift_s8_list_t         s8list;
    19: sai_thrift_u16_list_t        u16list;
    20: sai_thrift_s16_list_t        s16list;
    21: sai_thrift_u32_list_t        u32list;
    22: sai_thrift_s32_list_t        s32list;
    23: sai_thrift_u32_range_t       u32range;
    24: sai_thrift_s32_range_t       s32range;
    25: sai_thrift_vlan_list_t       vlanlist;
    26: sai_thrift_acl_field_data_t  aclfield;
    27: sai_thrift_acl_action_data_t aclaction;
    28: sai_thrift_qos_map_list_t    qosmap;
    29: sai_thrift_tunnel_map_list_t tunnelmap;
    30: sai_thrift_acl_capability_t  aclcapability;
}

struct sai_thrift_attribute_t
{
    1: sai_thrift_attr_id_t         id;
    2: sai_thrift_attribute_value_t value;
}

//*********************************************************************************************************************

//typedef i64 sai_thrift_object_id_t
//typedef i16 sai_thrift_vlan_id_t
//typedef string sai_thrift_mac_t
typedef byte sai_thrift_vlan_tagging_mode_t
//typedef i32 sai_thrift_status_t
//typedef string sai_thrift_ip4_t
//typedef string sai_thrift_ip6_t
//typedef byte sai_thrift_ip_addr_family_t
typedef byte sai_thrift_port_stp_port_state_t
typedef i32 sai_thrift_hostif_trap_id_t
typedef i32 sai_thrift_next_hop_type_t
typedef i32 sai_thrift_vlan_stat_counter_t
typedef i32 sai_thrift_policer_stat_counter_t
typedef i32 sai_thrift_port_stat_counter_t
typedef i32 sai_thrift_queue_stat_counter_t
typedef i32 sai_thrift_pg_stat_counter_t

struct sai_thrift_result_data_t {
    1: sai_thrift_object_id_t oid;
}

struct sai_thrift_result_t {
    1: sai_thrift_result_data_t data;
    2: sai_thrift_status_t status;
}

struct sai_thrift_fdb_entry_t
{
    1: sai_thrift_mac_t mac_address;
    2: sai_thrift_vlan_id_t vlan_id;
}

struct sai_thrift_vlan_port_t
{
    1: sai_thrift_object_id_t port_id;
    2: sai_thrift_vlan_tagging_mode_t tagging_mode;
}

struct sai_thrift_ip_prefix_t {
    1: sai_thrift_ip_addr_family_t addr_family;
    2: sai_thrift_ip_t addr;
    3: sai_thrift_ip_t mask;
}

struct sai_thrift_route_entry_t {
    1: sai_thrift_object_id_t vr_id;
    2: sai_thrift_ip_prefix_t destination;
}

struct sai_thrift_neighbor_entry_t {
    1: sai_thrift_object_id_t rif_id;
    2: sai_thrift_ip_address_t ip_address;
}

struct sai_thrift_attribute_list_t
{
    1: list<sai_thrift_attribute_t> attr_list;
    2: i32 attr_count; // redundant
}

//*********************************************************************************************************************

//
// SAI Policer API ****************************************************************************************************
//

typedef i32 sai_thrift_policer_stat_t

service switch_sai_rpc
{
    //
    // SAI ACL API ****************************************************************************************************
    //

    //
    // SAI Buffer API *************************************************************************************************
    //

    //
    // SAI FDB API ****************************************************************************************************
    //

    //
    // SAI Hash API ***************************************************************************************************
    //

    //
    // SAI Host Interface API *****************************************************************************************
    //

    sai_thrift_object_id_t sai_thrift_create_hostif(
        1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_remove_hostif(
        1: sai_thrift_object_id_t thrift_hif_id);

    sai_thrift_status_t sai_thrift_set_hostif_attribute(
        1: sai_thrift_object_id_t thrift_hif_id,
        2: sai_thrift_attribute_t thrift_attr);

    sai_thrift_object_id_t sai_thrift_create_hostif_trap_group(
        1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_remove_hostif_trap_group(
        1: sai_thrift_object_id_t thrift_hostif_trap_group_id);

    sai_thrift_status_t sai_thrift_set_hostif_trap_group_attribute(
        1: sai_thrift_object_id_t thrift_hostif_trap_group_id,
        2: sai_thrift_attribute_t thrift_attr);

    sai_thrift_object_id_t sai_thrift_create_hostif_trap(
        1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_remove_hostif_trap(
        1: sai_thrift_object_id_t thrift_hostif_trap_id);

    sai_thrift_status_t sai_thrift_set_hostif_trap_attribute(
        1: sai_thrift_object_id_t thrift_hostif_trap_id,
        2: sai_thrift_attribute_t thrift_attr);

    //
    // SAI IPMC API ***************************************************************************************************
    //

    //
    // SAI IPMC Group API *********************************************************************************************
    //

    //
    // SAI L2MC API ***************************************************************************************************
    //

    //
    // SAI L2MC Group API *********************************************************************************************
    //

    //
    // SAI LAG API ****************************************************************************************************
    //

    //
    // SAI Multicast FDB API ******************************************************************************************
    //

    //
    // SAI Mirror API *************************************************************************************************
    //

    //
    // SAI Neighbor API ***********************************************************************************************
    //

    //
    // SAI Next Hop API ***********************************************************************************************
    //

    //
    // SAI Next Hop Group API *****************************************************************************************
    //

    //
    // SAI Policer API ************************************************************************************************
    //

    sai_thrift_object_id_t sai_thrift_create_policer(
        1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_remove_policer(
        1: sai_thrift_object_id_t thrift_policer_id);

    sai_thrift_status_t sai_thrift_set_policer_attribute(
        1: sai_thrift_object_id_t thrift_policer_id,
        2: sai_thrift_attribute_t thrift_attr);

    list<sai_thrift_uint64_t> sai_thrift_get_policer_stats(
        1: sai_thrift_object_id_t thrift_policer_id,
        2: list<sai_thrift_policer_stat_t> thrift_counter_ids);
    sai_thrift_status_t sai_thrift_clear_policer_stats(
        1: sai_thrift_object_id_t thrift_policer_id,
        2: list<sai_thrift_policer_stat_t> thrift_counter_ids);

    //
    // SAI Port API ***************************************************************************************************
    //

    sai_thrift_status_t sai_thrift_set_port_attribute(1: sai_thrift_object_id_t port_id, 2: sai_thrift_attribute_t thrift_attr);

    sai_thrift_attribute_list_t sai_thrift_get_port_attribute(1: sai_thrift_object_id_t port_id);
    list<i64> sai_thrift_get_port_stats(
                             1: sai_thrift_object_id_t port_id,
                             2: list<sai_thrift_port_stat_counter_t> counter_ids,
                             3: i32 number_of_counters);
    sai_thrift_status_t sai_thrift_clear_port_all_stats(1: sai_thrift_object_id_t port_id)

    //
    // SAI QoS Maps API ***********************************************************************************************
    //

    //
    // SAI Queue API **************************************************************************************************
    //

    //
    // SAI Route API **************************************************************************************************
    //

    //
    // SAI Router API *************************************************************************************************
    //

    //
    // SAI Router Interface API ***************************************************************************************
    //

    //
    // SAI RPF Group API **********************************************************************************************
    //

    //
    // SAI Sample Packet API ******************************************************************************************
    //

    //
    // SAI Scheduler API **********************************************************************************************
    //

    //
    // SAI Scheduler Group API ****************************************************************************************
    //

    //
    // SAI STP API ****************************************************************************************************
    //

    //
    // SAI Switch API *************************************************************************************************
    //

    //
    // SAI Tunnel API *************************************************************************************************
    //

    //
    // SAI User Defined Field API *************************************************************************************
    //

    //
    // SAI VLAN API ***************************************************************************************************
    //

    //
    // SAI WRED API ***************************************************************************************************
    //

    //port API


    //fdb API
    sai_thrift_status_t sai_thrift_create_fdb_entry(1: sai_thrift_fdb_entry_t thrift_fdb_entry, 2: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_delete_fdb_entry(1: sai_thrift_fdb_entry_t thrift_fdb_entry);
    sai_thrift_status_t sai_thrift_flush_fdb_entries(1: list <sai_thrift_attribute_t> thrift_attr_list);

    //vlan API
    sai_thrift_object_id_t sai_thrift_create_vlan(1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_remove_vlan(1: sai_thrift_object_id_t vlan_oid);
    list<i64> sai_thrift_get_vlan_stats(
                             1: sai_thrift_vlan_id_t vlan_id,
                             2: list<sai_thrift_vlan_stat_counter_t> counter_ids,
                             3: i32 number_of_counters);
    sai_thrift_object_id_t sai_thrift_create_vlan_member(1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_remove_vlan_member(1: sai_thrift_object_id_t vlan_member_id);
    sai_thrift_attribute_list_t sai_thrift_get_vlan_attribute(1: sai_thrift_object_id_t vlan_id);

    //virtual router API
    sai_thrift_object_id_t sai_thrift_create_virtual_router(1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_remove_virtual_router(1: sai_thrift_object_id_t vr_id);

    //route API
    sai_thrift_status_t sai_thrift_create_route(1: sai_thrift_route_entry_t thrift_route_entry, 2: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_remove_route(1: sai_thrift_route_entry_t thrift_route_entry);

    //router interface API
    sai_thrift_object_id_t sai_thrift_create_router_interface(1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_remove_router_interface(1: sai_thrift_object_id_t rif_id);

    //next hop API
    sai_thrift_object_id_t sai_thrift_create_next_hop(1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_remove_next_hop(1: sai_thrift_object_id_t next_hop_id);

    // Next Hop Group API.
    sai_thrift_object_id_t sai_thrift_create_next_hop_group(1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_remove_next_hop_group(1: sai_thrift_object_id_t nhop_group_oid);
    sai_thrift_object_id_t sai_thrift_create_next_hop_group_member(1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_remove_next_hop_group_member(1: sai_thrift_object_id_t nhop_group_member_oid);

    //lag API
    sai_thrift_object_id_t sai_thrift_create_lag(1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_remove_lag(1: sai_thrift_object_id_t lag_id);
    sai_thrift_object_id_t sai_thrift_create_lag_member(1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_remove_lag_member(1: sai_thrift_object_id_t lag_member_id);

    //stp API
    sai_thrift_object_id_t sai_thrift_create_stp_entry(1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_remove_stp_entry(1: sai_thrift_object_id_t stp_id);
    sai_thrift_status_t sai_thrift_set_stp_port_state(1: sai_thrift_object_id_t stp_id, 2: sai_thrift_object_id_t port_id, 3: sai_thrift_port_stp_port_state_t stp_port_state);
    sai_thrift_port_stp_port_state_t sai_thrift_get_stp_port_state(1: sai_thrift_object_id_t stp_id, 2: sai_thrift_object_id_t port_id);

    //neighbor API
    sai_thrift_status_t sai_thrift_create_neighbor_entry(1: sai_thrift_neighbor_entry_t thrift_neighbor_entry, 2: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_remove_neighbor_entry(1: sai_thrift_neighbor_entry_t thrift_neighbor_entry);

    //switch API
    sai_thrift_attribute_list_t sai_thrift_get_switch_attribute();
    sai_thrift_attribute_t sai_thrift_get_port_list_by_front_port();
    sai_thrift_object_id_t sai_thrift_get_cpu_port_id();
    sai_thrift_object_id_t sai_thrift_get_default_trap_group();
    sai_thrift_object_id_t sai_thrift_get_default_router_id();
    sai_thrift_object_id_t sai_thrift_get_port_id_by_front_port(1: string port_name);
    sai_thrift_status_t sai_thrift_set_switch_attribute(1: sai_thrift_attribute_t attribute);

    //Trap API







    // ACL API
    sai_thrift_object_id_t sai_thrift_create_acl_table(1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_delete_acl_table(1: sai_thrift_object_id_t acl_table_id);

    sai_thrift_object_id_t sai_thrift_create_acl_entry(1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_delete_acl_entry(1: sai_thrift_object_id_t acl_entry);

    sai_thrift_object_id_t sai_thrift_create_acl_counter(1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_delete_acl_counter(1: sai_thrift_object_id_t acl_counter_id);
    list<sai_thrift_attribute_value_t> sai_thrift_get_acl_counter_attribute(
                             1: sai_thrift_object_id_t acl_counter_id,
                             2: list<i32> thrift_attr_ids);

    // Mirror API
    sai_thrift_object_id_t sai_thrift_create_mirror_session(1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_remove_mirror_session(1: sai_thrift_object_id_t session_id);

    // Policer API



    // Scheduler API
    sai_thrift_object_id_t sai_thrift_create_scheduler_profile(1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_remove_scheduler_profile(1: sai_thrift_object_id_t scheduler_id);

    // Queue API
    list<i64> sai_thrift_get_queue_stats(
                             1: sai_thrift_object_id_t queue_id,
                             2: list<sai_thrift_queue_stat_counter_t> counter_ids,
                             3: i32 number_of_counters);
    sai_thrift_status_t sai_thrift_clear_queue_stats(
                             1: sai_thrift_object_id_t queue_id,
                             2: list<sai_thrift_queue_stat_counter_t> counter_ids,
                             3: i32 number_of_counters);
    sai_thrift_status_t sai_thrift_set_queue_attribute(1: sai_thrift_object_id_t queue_id,
                                                       2: sai_thrift_attribute_t thrift_attr)

    // Buffer API
    sai_thrift_object_id_t sai_thrift_create_buffer_profile(1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_object_id_t sai_thrift_create_pool_profile(1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_set_priority_group_attribute(1: sai_thrift_object_id_t pg_id,
                                                                2: sai_thrift_attribute_t thrift_attr)
    list<i64> sai_thrift_get_pg_stats(
                         1: sai_thrift_object_id_t pg_id,
                         2: list<sai_thrift_pg_stat_counter_t> counter_ids,
                         3: i32 number_of_counters);

    // WRED API
    sai_thrift_object_id_t sai_thrift_create_wred_profile(1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_remove_wred_profile(1: sai_thrift_object_id_t wred_id);

    // QoS Map API
    sai_thrift_object_id_t sai_thrift_create_qos_map(1: list<sai_thrift_attribute_t> thrift_attr_list);
    sai_thrift_status_t sai_thrift_remove_qos_map(1: sai_thrift_object_id_t qos_map_id);
}
