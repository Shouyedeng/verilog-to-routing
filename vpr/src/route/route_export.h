/******** Function prototypes for functions in route_common.c that ***********
 ******** are used outside the router modules.                     ***********/
#include "vpr_types.h"
#include <memory>
#include "timing_info_fwd.h"
#include "route_common.h"
#include "RoutingDelayCalculator.h"

void try_graph(int width_fac,
               const t_router_opts& router_opts,
               t_det_routing_arch* det_routing_arch,
               std::vector<t_segment_inf>& segment_inf,
               t_chan_width_dist chan_width_dist,
               t_direct_inf* directs,
               int num_directs);

bool try_route(int width_fac,
               const t_router_opts& router_opts,
               const t_analysis_opts& analysis_opts,
               t_det_routing_arch* det_routing_arch,
               std::vector<t_segment_inf>& segment_inf,
               vtr::vector<ClusterNetId, float*>& net_delay,
               std::shared_ptr<SetupHoldTimingInfo> timing_info,
               std::shared_ptr<RoutingDelayCalculator> delay_calc,
               t_chan_width_dist chan_width_dist,
               t_direct_inf* directs,
               int num_directs,
               ScreenUpdatePriority first_iteration_priority);

bool feasible_routing();

std::vector<int> collect_congested_rr_nodes();

std::vector<std::set<ClusterNetId>> collect_rr_node_nets();

t_clb_opins_used alloc_route_structs();

void free_route_structs();

vtr::vector<ClusterNetId, t_trace*> alloc_saved_routing();

void free_saved_routing(vtr::vector<ClusterNetId, t_trace*>& best_routing);

void save_routing(vtr::vector<ClusterNetId, t_trace*>& best_routing,
                  const t_clb_opins_used& clb_opins_used_locally,
                  t_clb_opins_used& saved_clb_opins_used_locally);

void restore_routing(vtr::vector<ClusterNetId, t_trace*>& best_routing,
                     t_clb_opins_used& clb_opins_used_locally,
                     const t_clb_opins_used& saved_clb_opins_used_locally);

void get_serial_num();

void print_route(const char* place_file, const char* route_file);
void print_route(FILE* fp, const vtr::vector<ClusterNetId, t_traceback>& tracebacks);

void load_gcr_sbox_conn(vtr::NdMatrix<std::string, 4> &gcr_sbox_conn, 
						int from_x, int from_y, t_rr_type from_type, int from_track,
                        int to_x, int to_y,  t_rr_type to_type, int to_track, size_t net_id);
void print_gcr_sbox_echo(size_t nodes_per_chan, vtr::NdMatrix<std::string, 4> &gcr_sbox_conn);
int check_gcr_input(vtr::NdMatrix<std::string, 4> &gcr_sbox_conn);
